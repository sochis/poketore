import 'package:dio/dio.dart';

import '../../../core/config/app_config.dart';
import '../domain/next_load_result.dart';

class AiApiClient {
  AiApiClient(this._dio);

  final Dio _dio;

  Future<NextLoadResult?> requestNextLoad(Map<String, dynamic> payload) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '${AppConfig.aiBaseUrl}/ai/recommend/next-load',
        data: payload,
      );
      final data = response.data;
      if (data == null) {
        return null;
      }
      return NextLoadResult.fromJson(data);
    } catch (_) {
      return null;
    }
  }

  Future<String?> requestDailyPlan(Map<String, dynamic> payload) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '${AppConfig.aiBaseUrl}/ai/recommend/daily-plan',
        data: payload,
      );
      return response.data?['planText'] as String?;
    } catch (_) {
      return null;
    }
  }
}
