import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../data/ai_api_client.dart';
import '../domain/local_recommendation_engine.dart';

final dioProvider = Provider<Dio>((_) => Dio());

final aiApiClientProvider = Provider<AiApiClient>((ref) {
  return AiApiClient(ref.watch(dioProvider));
});

final localRecommendationEngineProvider = Provider<LocalRecommendationEngine>((
  _,
) {
  return LocalRecommendationEngine();
});
