//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RelayApi {
  RelayApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add credentials to authenticate to a relay-host service.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RelayAddAuthRequest] relayAddAuthRequest (required):
  Future<Response> relayAddAuthWithHttpInfo(RelayAddAuthRequest relayAddAuthRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/relay/add-auth';

    // ignore: prefer_final_locals
    Object? postBody = relayAddAuthRequest;

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

  /// Add credentials to authenticate to a relay-host service.
  ///
  /// Parameters:
  ///
  /// * [RelayAddAuthRequest] relayAddAuthRequest (required):
  Future<void> relayAddAuth(RelayAddAuthRequest relayAddAuthRequest,) async {
    final response = await relayAddAuthWithHttpInfo(relayAddAuthRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Add domain to relay-host service.
  ///
  /// Add a relay-host where mail sent from mail accounts of the provided, domain will be relayed through to their destination.  If a port is not provided it will default to 25.  If the relay-host requires authentication, use the 'setup relay add-auth' command after adding the relay-host. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RelayAddDomainRequest] relayAddDomainRequest (required):
  Future<Response> relayAddDomainWithHttpInfo(RelayAddDomainRequest relayAddDomainRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/relay/add-domain';

    // ignore: prefer_final_locals
    Object? postBody = relayAddDomainRequest;

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

  /// Add domain to relay-host service.
  ///
  /// Add a relay-host where mail sent from mail accounts of the provided, domain will be relayed through to their destination.  If a port is not provided it will default to 25.  If the relay-host requires authentication, use the 'setup relay add-auth' command after adding the relay-host. 
  ///
  /// Parameters:
  ///
  /// * [RelayAddDomainRequest] relayAddDomainRequest (required):
  Future<void> relayAddDomain(RelayAddDomainRequest relayAddDomainRequest,) async {
    final response = await relayAddDomainWithHttpInfo(relayAddDomainRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Exclude the domain from relay-host service.
  ///
  /// When a default relay-host is configured (via ENV), the default behaviour is to relay all your mail accounts outgoing mail through that service.  This command allows to opt-out from that default behaviour by excluding all mail accounts belonging to a hosted domain you specify. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RelayExcludeDomainRequest] relayExcludeDomainRequest (required):
  Future<Response> relayExcludeDomainWithHttpInfo(RelayExcludeDomainRequest relayExcludeDomainRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/relay/exclude-domain';

    // ignore: prefer_final_locals
    Object? postBody = relayExcludeDomainRequest;

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

  /// Exclude the domain from relay-host service.
  ///
  /// When a default relay-host is configured (via ENV), the default behaviour is to relay all your mail accounts outgoing mail through that service.  This command allows to opt-out from that default behaviour by excluding all mail accounts belonging to a hosted domain you specify. 
  ///
  /// Parameters:
  ///
  /// * [RelayExcludeDomainRequest] relayExcludeDomainRequest (required):
  Future<void> relayExcludeDomain(RelayExcludeDomainRequest relayExcludeDomainRequest,) async {
    final response = await relayExcludeDomainWithHttpInfo(relayExcludeDomainRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
