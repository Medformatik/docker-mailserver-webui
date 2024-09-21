//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetEmail200ResponseDataInnerQuota {
  /// Returns a new [GetEmail200ResponseDataInnerQuota] instance.
  GetEmail200ResponseDataInnerQuota({
    this.quotaUsed,
    this.quotaUsedPercent,
    this.quota,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quotaUsed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quotaUsedPercent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? quota;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetEmail200ResponseDataInnerQuota &&
    other.quotaUsed == quotaUsed &&
    other.quotaUsedPercent == quotaUsedPercent &&
    other.quota == quota;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (quotaUsed == null ? 0 : quotaUsed!.hashCode) +
    (quotaUsedPercent == null ? 0 : quotaUsedPercent!.hashCode) +
    (quota == null ? 0 : quota!.hashCode);

  @override
  String toString() => 'GetEmail200ResponseDataInnerQuota[quotaUsed=$quotaUsed, quotaUsedPercent=$quotaUsedPercent, quota=$quota]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.quotaUsed != null) {
      json[r'quotaUsed'] = this.quotaUsed;
    } else {
      json[r'quotaUsed'] = null;
    }
    if (this.quotaUsedPercent != null) {
      json[r'quotaUsedPercent'] = this.quotaUsedPercent;
    } else {
      json[r'quotaUsedPercent'] = null;
    }
    if (this.quota != null) {
      json[r'quota'] = this.quota;
    } else {
      json[r'quota'] = null;
    }
    return json;
  }

  /// Returns a new [GetEmail200ResponseDataInnerQuota] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetEmail200ResponseDataInnerQuota? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetEmail200ResponseDataInnerQuota[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetEmail200ResponseDataInnerQuota[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetEmail200ResponseDataInnerQuota(
        quotaUsed: mapValueOfType<int>(json, r'quotaUsed'),
        quotaUsedPercent: mapValueOfType<int>(json, r'quotaUsedPercent'),
        quota: mapValueOfType<int>(json, r'quota'),
      );
    }
    return null;
  }

  static List<GetEmail200ResponseDataInnerQuota> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetEmail200ResponseDataInnerQuota>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetEmail200ResponseDataInnerQuota.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetEmail200ResponseDataInnerQuota> mapFromJson(dynamic json) {
    final map = <String, GetEmail200ResponseDataInnerQuota>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetEmail200ResponseDataInnerQuota.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetEmail200ResponseDataInnerQuota-objects as value to a dart map
  static Map<String, List<GetEmail200ResponseDataInnerQuota>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetEmail200ResponseDataInnerQuota>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetEmail200ResponseDataInnerQuota.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

