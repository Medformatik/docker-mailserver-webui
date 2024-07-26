# openapi.api.DKIMDomainKeysIdentifiedMailApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**setupDkim**](DKIMDomainKeysIdentifiedMailApi.md#setupdkim) | **POST** /api/v1/config/dkim | Creates DKIM keys and configures them within DMS.


# **setupDkim**
> setupDkim(setupDkimRequest)

Creates DKIM keys and configures them within DMS.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = DKIMDomainKeysIdentifiedMailApi();
final setupDkimRequest = SetupDkimRequest(); // SetupDkimRequest | <strong>Configuration adjustments :</strong> <pre> selector  Set a manual selector for the key.           Default: mail domain    Provide the domain for which to generate keys for.           Default: The FQDN assigned to DMS, excluding any subdomain. keytype   Set the type of key you want to use.           Possible values: rsa, ed25519           Default: rsa keysize   Set the size of the keys to be generated.           Possible values: 1024, 2048 and 4096           Default: 2048           Only applies when using keytype=rsa </pre> 

try {
    api_instance.setupDkim(setupDkimRequest);
} catch (e) {
    print('Exception when calling DKIMDomainKeysIdentifiedMailApi->setupDkim: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setupDkimRequest** | [**SetupDkimRequest**](SetupDkimRequest.md)| <strong>Configuration adjustments :</strong> <pre> selector  Set a manual selector for the key.           Default: mail domain    Provide the domain for which to generate keys for.           Default: The FQDN assigned to DMS, excluding any subdomain. keytype   Set the type of key you want to use.           Possible values: rsa, ed25519           Default: rsa keysize   Set the size of the keys to be generated.           Possible values: 1024, 2048 and 4096           Default: 2048           Only applies when using keytype=rsa </pre>  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

