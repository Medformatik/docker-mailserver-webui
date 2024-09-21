# openapi.api.MailAccountApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addEmail**](MailAccountApi.md#addemail) | **POST** /api/v1/email | Add a new mail account (email address).
[**addEmailRestrict**](MailAccountApi.md#addemailrestrict) | **POST** /api/v1/email/restrict | Add a mail account to restricted list.
[**deleteEmail**](MailAccountApi.md#deleteemail) | **DELETE** /api/v1/email | Delete a mail account, including associated data (aliases, quotas) and optionally the mailbox storage for that account.
[**deleteEmailRestrict**](MailAccountApi.md#deleteemailrestrict) | **DELETE** /api/v1/email/restrict | Remove a mail account from the restricted list.
[**getEmail**](MailAccountApi.md#getemail) | **GET** /api/v1/email | Get all registered mail account.
[**getEmailRestrict**](MailAccountApi.md#getemailrestrict) | **GET** /api/v1/email/restrict | Display restricted mail accounts.
[**updateEmail**](MailAccountApi.md#updateemail) | **PATCH** /api/v1/email | Update the password for a mail account.


# **addEmail**
> addEmail(addEmailRequest)

Add a new mail account (email address).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MailAccountApi();
final addEmailRequest = AddEmailRequest(); // AddEmailRequest | 

try {
    api_instance.addEmail(addEmailRequest);
} catch (e) {
    print('Exception when calling MailAccountApi->addEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addEmailRequest** | [**AddEmailRequest**](AddEmailRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addEmailRestrict**
> addEmailRestrict(addEmailRestrictRequest)

Add a mail account to restricted list.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MailAccountApi();
final addEmailRestrictRequest = AddEmailRestrictRequest(); // AddEmailRestrictRequest | <strong>Configuration adjustments :</strong> <pre> access    The type of access that will be restricted.           Possible values: send, receive </pre> 

try {
    api_instance.addEmailRestrict(addEmailRestrictRequest);
} catch (e) {
    print('Exception when calling MailAccountApi->addEmailRestrict: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addEmailRestrictRequest** | [**AddEmailRestrictRequest**](AddEmailRestrictRequest.md)| <strong>Configuration adjustments :</strong> <pre> access    The type of access that will be restricted.           Possible values: send, receive </pre>  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEmail**
> deleteEmail(email)

Delete a mail account, including associated data (aliases, quotas) and optionally the mailbox storage for that account.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MailAccountApi();
final email = user@example.com; // String | Registered mail account.

try {
    api_instance.deleteEmail(email);
} catch (e) {
    print('Exception when calling MailAccountApi->deleteEmail: $e\n');
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

# **deleteEmailRestrict**
> deleteEmailRestrict(access, email)

Remove a mail account from the restricted list.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MailAccountApi();
final access = access_example; // String | The type of access that will be restricted.
final email = user@example.com; // String | Registered mail account.

try {
    api_instance.deleteEmailRestrict(access, email);
} catch (e) {
    print('Exception when calling MailAccountApi->deleteEmailRestrict: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access** | **String**| The type of access that will be restricted. | 
 **email** | **String**| Registered mail account. | 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmail**
> GetEmail200Response getEmail()

Get all registered mail account.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MailAccountApi();

try {
    final result = api_instance.getEmail();
    print(result);
} catch (e) {
    print('Exception when calling MailAccountApi->getEmail: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetEmail200Response**](GetEmail200Response.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmailRestrict**
> getEmailRestrict(email)

Display restricted mail accounts.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MailAccountApi();
final email = user@example.com; // String | Registered mail account.

try {
    api_instance.getEmailRestrict(email);
} catch (e) {
    print('Exception when calling MailAccountApi->getEmailRestrict: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Registered mail account. | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEmail**
> updateEmail(updateEmailRequest)

Update the password for a mail account.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = MailAccountApi();
final updateEmailRequest = UpdateEmailRequest(); // UpdateEmailRequest | 

try {
    api_instance.updateEmail(updateEmailRequest);
} catch (e) {
    print('Exception when calling MailAccountApi->updateEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateEmailRequest** | [**UpdateEmailRequest**](UpdateEmailRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

