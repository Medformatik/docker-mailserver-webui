//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/aliases_api.dart';
part 'api/dkim_domain_keys_identified_mail_api.dart';
part 'api/dovecot_api.dart';
part 'api/fail2ban_api.dart';
part 'api/logs_api.dart';
part 'api/mail_account_api.dart';
part 'api/quota_api.dart';
part 'api/relay_api.dart';

part 'model/add_alias_request.dart';
part 'model/add_dovecot_master_request.dart';
part 'model/add_email_request.dart';
part 'model/add_email_restrict_request.dart';
part 'model/relay_add_auth_request.dart';
part 'model/relay_add_domain_request.dart';
part 'model/relay_exclude_domain_request.dart';
part 'model/setup_dkim_request.dart';
part 'model/update_email_request.dart';
part 'model/update_quota_request.dart';


/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) => pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
