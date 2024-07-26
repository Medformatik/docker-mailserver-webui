//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DKIMDomainKeysIdentifiedMailApi {
  DKIMDomainKeysIdentifiedMailApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates DKIM keys and configures them within DMS.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SetupDkimRequest] setupDkimRequest (required):
  ///   <strong>Configuration adjustments :</strong> <pre> selector  Set a manual selector for the key.           Default: mail domain    Provide the domain for which to generate keys for.           Default: The FQDN assigned to DMS, excluding any subdomain. keytype   Set the type of key you want to use.           Possible values: rsa, ed25519           Default: rsa keysize   Set the size of the keys to be generated.           Possible values: 1024, 2048 and 4096           Default: 2048           Only applies when using keytype=rsa </pre> 
  Future<Response> setupDkimWithHttpInfo(SetupDkimRequest setupDkimRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/config/dkim';

    // ignore: prefer_final_locals
    Object? postBody = setupDkimRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Creates DKIM keys and configures them within DMS.
  ///
  /// Parameters:
  ///
  /// * [SetupDkimRequest] setupDkimRequest (required):
  ///   <strong>Configuration adjustments :</strong> <pre> selector  Set a manual selector for the key.           Default: mail domain    Provide the domain for which to generate keys for.           Default: The FQDN assigned to DMS, excluding any subdomain. keytype   Set the type of key you want to use.           Possible values: rsa, ed25519           Default: rsa keysize   Set the size of the keys to be generated.           Possible values: 1024, 2048 and 4096           Default: 2048           Only applies when using keytype=rsa </pre> 
  Future<void> setupDkim(SetupDkimRequest setupDkimRequest,) async {
    final response = await setupDkimWithHttpInfo(setupDkimRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
