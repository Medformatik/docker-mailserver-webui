# openapi.api.QuotaApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteQuota**](QuotaApi.md#deletequota) | **DELETE** /api/v1/quota | Remove any quota set for an existing mail account.
[**updateQuota**](QuotaApi.md#updatequota) | **PATCH** /api/v1/quota | Set a quota (storage limit) for an existing mail account.


# **deleteQuota**
> deleteQuota(email)

Remove any quota set for an existing mail account.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = QuotaApi();
final email = user@example.com; // String | Registered mail account.

try {
    api_instance.deleteQuota(email);
} catch (e) {
    print('Exception when calling QuotaApi->deleteQuota: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Registered mail account. | 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateQuota**
> updateQuota(updateQuotaRequest)

Set a quota (storage limit) for an existing mail account.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = QuotaApi();
final updateQuotaRequest = UpdateQuotaRequest(); // UpdateQuotaRequest | <strong>Configuration adjustments :</strong> <pre> quota     The quota value is in bytes. You may use a unit suffix for convenience,           such as 10M for 10 MebiBytes (MiB). A value of 0 opts out of enforcing quota. </pre> 

try {
    api_instance.updateQuota(updateQuotaRequest);
} catch (e) {
    print('Exception when calling QuotaApi->updateQuota: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateQuotaRequest** | [**UpdateQuotaRequest**](UpdateQuotaRequest.md)| <strong>Configuration adjustments :</strong> <pre> quota     The quota value is in bytes. You may use a unit suffix for convenience,           such as 10M for 10 MebiBytes (MiB). A value of 0 opts out of enforcing quota. </pre>  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

