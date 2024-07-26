# openapi.api.DovecotApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDovecotMaster**](DovecotApi.md#adddovecotmaster) | **POST** /api/v1/dovecot/master | Add a new dovecot-master account (for POP3/IMAP administration).
[**deleteDovecotMaster**](DovecotApi.md#deletedovecotmaster) | **DELETE** /api/v1/dovecot/master | Remove a dovecot-master account.
[**getDovecotMaster**](DovecotApi.md#getdovecotmaster) | **GET** /api/v1/dovecot/master | Get list dovecot-master account.
[**updateDovecotMaster**](DovecotApi.md#updatedovecotmaster) | **PATCH** /api/v1/dovecot/master | Update the password for a dovecot-master account.


# **addDovecotMaster**
> addDovecotMaster(addDovecotMasterRequest)

Add a new dovecot-master account (for POP3/IMAP administration).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = DovecotApi();
final addDovecotMasterRequest = AddDovecotMasterRequest(); // AddDovecotMasterRequest | 

try {
    api_instance.addDovecotMaster(addDovecotMasterRequest);
} catch (e) {
    print('Exception when calling DovecotApi->addDovecotMaster: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addDovecotMasterRequest** | [**AddDovecotMasterRequest**](AddDovecotMasterRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDovecotMaster**
> deleteDovecotMaster(username)

Remove a dovecot-master account.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = DovecotApi();
final username = []; // List<String> | Dovecot master username.

try {
    api_instance.deleteDovecotMaster(username);
} catch (e) {
    print('Exception when calling DovecotApi->deleteDovecotMaster: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | [**List<String>**](String.md)| Dovecot master username. | [default to const []]

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDovecotMaster**
> getDovecotMaster()

Get list dovecot-master account.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = DovecotApi();

try {
    api_instance.getDovecotMaster();
} catch (e) {
    print('Exception when calling DovecotApi->getDovecotMaster: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDovecotMaster**
> updateDovecotMaster(addDovecotMasterRequest)

Update the password for a dovecot-master account.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = DovecotApi();
final addDovecotMasterRequest = AddDovecotMasterRequest(); // AddDovecotMasterRequest | 

try {
    api_instance.updateDovecotMaster(addDovecotMasterRequest);
} catch (e) {
    print('Exception when calling DovecotApi->updateDovecotMaster: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addDovecotMasterRequest** | [**AddDovecotMasterRequest**](AddDovecotMasterRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

