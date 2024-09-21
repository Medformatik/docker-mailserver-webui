import 'package:openapi/api.dart';

class AppConfig {
  static const String appName = 'Docker Mailserver WebUI';

  static String get apiUrl => const String.fromEnvironment('API_URL', defaultValue: 'http://mailserver:3000');

  static String get apiKey => const String.fromEnvironment('API_KEY');

  static ApiClient get apiClient {
    final apiClient = ApiClient(
      basePath: apiUrl,
      authentication: HttpBearerAuth()..accessToken = apiKey,
    );
    apiClient.addDefaultHeader('X-API-Key', apiKey);
    return apiClient;
  }
}
