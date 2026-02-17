class AppConfig {
  static const aiBaseUrl = String.fromEnvironment(
    'AI_BASE_URL',
    defaultValue: 'http://127.0.0.1:5001/poketore/us-central1/api',
  );
}
