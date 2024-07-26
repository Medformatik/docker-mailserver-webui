# openapi.api.AliasesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAlias**](AliasesApi.md#addalias) | **POST** /api/v1/alias | Add an alias for a recipient (a mail account).
[**deleteAlias**](AliasesApi.md#deletealias) | **DELETE** /api/v1/alias | Remove a mail account (the recipient) from an existing alias.


# **addAlias**
> addAlias(addAliasRequest)

Add an alias for a recipient (a mail account).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = AliasesApi();
final addAliasRequest = AddAliasRequest(); // AddAliasRequest | 

try {
    api_instance.addAlias(addAliasRequest);
} catch (e) {
    print('Exception when calling AliasesApi->addAlias: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addAliasRequest** | [**AddAliasRequest**](AddAliasRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAlias**
> deleteAlias(emailAlias, emailRecipient)

Remove a mail account (the recipient) from an existing alias.

If the alias has no more recipients, the alias will also be removed.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = AliasesApi();
final emailAlias = alias@example.com; // String | Mail account alias.
final emailRecipient = user@example.com; // String | Mail account recipient.

try {
    api_instance.deleteAlias(emailAlias, emailRecipient);
} catch (e) {
    print('Exception when calling AliasesApi->deleteAlias: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAlias** | **String**| Mail account alias. | 
 **emailRecipient** | **String**| Mail account recipient. | 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

