//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateQuotaRequest {
  /// Returns a new [UpdateQuotaRequest] instance.
  UpdateQuotaRequest({
    this.email,
    this.quota,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? quota;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateQuotaRequest &&
    other.email == email &&
    other.quota == quota;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email == null ? 0 : email!.hashCode) +
    (quota == null ? 0 : quota!.hashCode);

  @override
  String toString() => 'UpdateQuotaRequest[email=$email, quota=$quota]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.quota != null) {
      json[r'quota'] = this.quota;
    } else {
      json[r'quota'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateQuotaRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateQuotaRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateQuotaRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateQuotaRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateQuotaRequest(
        email: mapValueOfType<String>(json, r'email'),
        quota: mapValueOfType<String>(json, r'quota'),
      );
    }
    return null;
  }

  static List<UpdateQuotaRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateQuotaRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateQuotaRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateQuotaRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateQuotaRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateQuotaRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateQuotaRequest-objects as value to a dart map
  static Map<String, List<UpdateQuotaRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateQuotaRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateQuotaRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

