//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetEmail200ResponseDataInner {
  /// Returns a new [GetEmail200ResponseDataInner] instance.
  GetEmail200ResponseDataInner({
    this.email,
    this.password,
    this.alias = const [],
    this.quota,
    this.restriction,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// Password in SHA512
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  List<GetEmail200ResponseDataInnerAliasInner> alias;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetEmail200ResponseDataInnerQuota? quota;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetEmail200ResponseDataInnerRestriction? restriction;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetEmail200ResponseDataInner &&
    other.email == email &&
    other.password == password &&
    _deepEquality.equals(other.alias, alias) &&
    other.quota == quota &&
    other.restriction == restriction;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (password == null ? 0 : password!.hashCode) +
    (alias.hashCode) +
    (quota == null ? 0 : quota!.hashCode) +
    (restriction == null ? 0 : restriction!.hashCode);

  @override
  String toString() => 'GetEmail200ResponseDataInner[email=$email, password=$password, alias=$alias, quota=$quota, restriction=$restriction]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
      json[r'alias'] = this.alias;
    if (this.quota != null) {
      json[r'quota'] = this.quota;
    } else {
      json[r'quota'] = null;
    }
    if (this.restriction != null) {
      json[r'restriction'] = this.restriction;
    } else {
      json[r'restriction'] = null;
    }
    return json;
  }

  /// Returns a new [GetEmail200ResponseDataInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetEmail200ResponseDataInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetEmail200ResponseDataInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetEmail200ResponseDataInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetEmail200ResponseDataInner(
        email: mapValueOfType<String>(json, r'email'),
        password: mapValueOfType<String>(json, r'password'),
        alias: GetEmail200ResponseDataInnerAliasInner.listFromJson(json[r'alias']),
        quota: GetEmail200ResponseDataInnerQuota.fromJson(json[r'quota']),
        restriction: GetEmail200ResponseDataInnerRestriction.fromJson(json[r'restriction']),
      );
    }
    return null;
  }

  static List<GetEmail200ResponseDataInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetEmail200ResponseDataInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetEmail200ResponseDataInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetEmail200ResponseDataInner> mapFromJson(dynamic json) {
    final map = <String, GetEmail200ResponseDataInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetEmail200ResponseDataInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetEmail200ResponseDataInner-objects as value to a dart map
  static Map<String, List<GetEmail200ResponseDataInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetEmail200ResponseDataInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetEmail200ResponseDataInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

