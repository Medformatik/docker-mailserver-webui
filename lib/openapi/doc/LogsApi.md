# openapi.api.LogsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLogsFail2ban**](LogsApi.md#getlogsfail2ban) | **GET** /api/v1/logs/fail2ban | Get latest fail2ban logs.


# **getLogsFail2ban**
> getLogsFail2ban(limit)

Get latest fail2ban logs.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ApiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyAuth').apiKeyPrefix = 'Bearer';

final api_instance = LogsApi();
final limit = 25; // int | Number of lines displayed (Default: 25).

try {
    api_instance.getLogsFail2ban(limit);
} catch (e) {
    print('Exception when calling LogsApi->getLogsFail2ban: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of lines displayed (Default: 25). | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

