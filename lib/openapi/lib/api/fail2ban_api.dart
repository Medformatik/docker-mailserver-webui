//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class Fail2banApi {
  Fail2banApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add IP Address to the custom jail.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ip (required):
  ///   IP address
  Future<Response> banFail2banWithHttpInfo(String ip,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/fail2ban/ban/{ip}'
      .replaceAll('{ip}', ip);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Add IP Address to the custom jail.
  ///
  /// Parameters:
  ///
  /// * [String] ip (required):
  ///   IP address
  Future<void> banFail2ban(String ip,) async {
    final response = await banFail2banWithHttpInfo(ip,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get all banned IP Address.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFail2banWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/fail2ban';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get all banned IP Address.
  Future<void> getFail2ban() async {
    final response = await getFail2banWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Unban IP Address.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ip (required):
  ///   IP address
  Future<Response> unbanFail2banWithHttpInfo(String ip,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/fail2ban/unban/{ip}'
      .replaceAll('{ip}', ip);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Unban IP Address.
  ///
  /// Parameters:
  ///
  /// * [String] ip (required):
  ///   IP address
  Future<void> unbanFail2ban(String ip,) async {
    final response = await unbanFail2banWithHttpInfo(ip,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
