# openapi.api.RelayApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**relayAddAuth**](RelayApi.md#relayaddauth) | **POST** /api/v1/relay/add-auth | Add credentials to authenticate to a relay-host service.
[**relayAddDomain**](RelayApi.md#relayadddomain) | **POST** /api/v1/relay/add-domain | Add domain to relay-host service.
[**relayExcludeDomain**](RelayApi.md#relayexcludedomain) | **POST** /api/v1/relay/exclude-domain | Exclude the domain from relay-host service.


# **relayAddAuth**
> relayAddAuth(relayAddAuthRequest)

Add credentials to authenticate to a relay-host service.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = RelayApi();
final relayAddAuthRequest = RelayAddAuthRequest(); // RelayAddAuthRequest | 

try {
    api_instance.relayAddAuth(relayAddAuthRequest);
} catch (e) {
    print('Exception when calling RelayApi->relayAddAuth: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **relayAddAuthRequest** | [**RelayAddAuthRequest**](RelayAddAuthRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **relayAddDomain**
> relayAddDomain(relayAddDomainRequest)

Add domain to relay-host service.

Add a relay-host where mail sent from mail accounts of the provided, domain will be relayed through to their destination.  If a port is not provided it will default to 25.  If the relay-host requires authentication, use the 'setup relay add-auth' command after adding the relay-host. 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = RelayApi();
final relayAddDomainRequest = RelayAddDomainRequest(); // RelayAddDomainRequest | 

try {
    api_instance.relayAddDomain(relayAddDomainRequest);
} catch (e) {
    print('Exception when calling RelayApi->relayAddDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **relayAddDomainRequest** | [**RelayAddDomainRequest**](RelayAddDomainRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **relayExcludeDomain**
> relayExcludeDomain(relayExcludeDomainRequest)

Exclude the domain from relay-host service.

When a default relay-host is configured (via ENV), the default behaviour is to relay all your mail accounts outgoing mail through that service.  This command allows to opt-out from that default behaviour by excluding all mail accounts belonging to a hosted domain you specify. 

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = RelayApi();
final relayExcludeDomainRequest = RelayExcludeDomainRequest(); // RelayExcludeDomainRequest | 

try {
    api_instance.relayExcludeDomain(relayExcludeDomainRequest);
} catch (e) {
    print('Exception when calling RelayApi->relayExcludeDomain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **relayExcludeDomainRequest** | [**RelayExcludeDomainRequest**](RelayExcludeDomainRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

