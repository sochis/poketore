import { onRequest } from "firebase-functions/v2/https";
import OpenAI from "openai";
import { z } from "zod";

const nextLoadInputSchema = z.object({
  exerciseName: z.string().min(1),
  latestSet: z.object({
    weightKg: z.number().nonnegative(),
    reps: z.number().int().positive(),
    rpe: z.number().optional(),
  }),
  targetReps: z.number().int().positive().default(8),
});

function fallbackNextLoad(input: z.infer<typeof nextLoadInputSchema>) {
  const succeeded =
    input.latestSet.reps >= input.targetReps && (input.latestSet.rpe ?? 8) <= 8.5;
  const tooHard = (input.latestSet.rpe ?? 0) >= 9.5;

  let weight = input.latestSet.weightKg;
  let rationale = "Keep load stable.";
  if (succeeded) {
    weight += 2.5;
    rationale = "Previous set was successful. Increase gradually.";
  } else if (tooHard || input.latestSet.reps <= input.targetReps - 2) {
    weight = Number((weight * 0.95).toFixed(2));
    rationale = "Effort was too high. Apply deload.";
  }

  return {
    recommendedWeightKg: Number(weight.toFixed(2)),
    recommendedReps: input.targetReps,
    rationale,
    confidence: 0.7,
  };
}

async function handleNextLoad(reqBody: unknown) {
  const parsed = nextLoadInputSchema.safeParse(reqBody);
  if (!parsed.success) {
    throw new Error("INVALID_PAYLOAD");
  }

  const openAiKey = process.env.OPENAI_API_KEY;
  if (!openAiKey) {
    return fallbackNextLoad(parsed.data);
  }

  try {
    const client = new OpenAI({ apiKey: openAiKey });
    const prompt = `
You are a safe strength coach.
Return strict JSON with keys:
recommendedWeightKg(number), recommendedReps(number), rationale(string), confidence(number).
Input: ${JSON.stringify(parsed.data)}
Rules: safety first, no sudden jumps, deload when effort is too high.
`;
    const response = await client.responses.create({
      model: "gpt-5-mini",
      input: prompt,
    });
    const text = response.output_text?.trim();
    return text ? JSON.parse(text) : fallbackNextLoad(parsed.data);
  } catch {
    return fallbackNextLoad(parsed.data);
  }
}

function handleDailyPlan(reqBody: unknown) {
  const body = (reqBody ?? {}) as Record<string, unknown>;
  const goal = typeof body.goal === "string" ? body.goal : "hypertrophy";
  const weeklyFrequency =
    typeof body.weeklyFrequency === "number" ? body.weeklyFrequency : 3;

  return {
    planText: `Goal: ${goal}. Today: compound push + accessory work. Weekly frequency: ${weeklyFrequency}.`,
  };
}

export const api = onRequest({ cors: true }, async (req, res) => {
  if (req.method !== "POST") {
    res.status(405).json({ error: "Method not allowed" });
    return;
  }

  switch (req.path) {
    case "/ai/recommend/next-load": {
      try {
        const result = await handleNextLoad(req.body);
        res.status(200).json(result);
      } catch {
        res.status(400).json({ error: "Invalid payload" });
      }
      return;
    }
    case "/ai/recommend/daily-plan": {
      res.status(200).json(handleDailyPlan(req.body));
      return;
    }
    case "/ai/comment/session": {
      res.status(200).json({
        comment: "Good consistency. Keep progression smooth and prioritize form.",
      });
      return;
    }
    default:
      res.status(404).json({ error: "Not found" });
  }
});
