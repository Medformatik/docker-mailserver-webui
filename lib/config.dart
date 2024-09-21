import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:openapi/api.dart';

class AppConfig {
  final storage = const FlutterSecureStorage();

  static const String appName = 'Docker Mailserver WebUI';

  Future<String?> getApiUrl() async {
    return storage.read(key: 'API_URL');
  }

  Future<String?> getApiKey() async {
    return storage.read(key: 'API_KEY');
  }

  Future<void> setApiUrl(String url) async {
    await storage.write(key: 'API_URL', value: url);
  }

  Future<void> setApiKey(String key) async {
    await storage.write(key: 'API_KEY', value: key);
  }

  Future<ApiClient?> getApiClient() async {
    final apiUrl = await getApiUrl();
    final apiKey = await getApiKey();
    if (apiUrl == null || apiKey == null) {
      return Future.value(null);
    }
    final apiClient = ApiClient(
      basePath: apiUrl,
    );
    apiClient.addDefaultHeader('X-API-Key', apiKey);
    return apiClient;
  }
}
