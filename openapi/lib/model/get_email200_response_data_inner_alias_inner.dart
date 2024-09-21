//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetEmail200ResponseDataInnerAliasInner {
  /// Returns a new [GetEmail200ResponseDataInnerAliasInner] instance.
  GetEmail200ResponseDataInnerAliasInner({
    this.emailAlias,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emailAlias;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetEmail200ResponseDataInnerAliasInner &&
    other.emailAlias == emailAlias;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emailAlias == null ? 0 : emailAlias!.hashCode);

  @override
  String toString() => 'GetEmail200ResponseDataInnerAliasInner[emailAlias=$emailAlias]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.emailAlias != null) {
      json[r'emailAlias'] = this.emailAlias;
    } else {
      json[r'emailAlias'] = null;
    }
    return json;
  }

  /// Returns a new [GetEmail200ResponseDataInnerAliasInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetEmail200ResponseDataInnerAliasInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetEmail200ResponseDataInnerAliasInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetEmail200ResponseDataInnerAliasInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetEmail200ResponseDataInnerAliasInner(
        emailAlias: mapValueOfType<String>(json, r'emailAlias'),
      );
    }
    return null;
  }

  static List<GetEmail200ResponseDataInnerAliasInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetEmail200ResponseDataInnerAliasInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetEmail200ResponseDataInnerAliasInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetEmail200ResponseDataInnerAliasInner> mapFromJson(dynamic json) {
    final map = <String, GetEmail200ResponseDataInnerAliasInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetEmail200ResponseDataInnerAliasInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetEmail200ResponseDataInnerAliasInner-objects as value to a dart map
  static Map<String, List<GetEmail200ResponseDataInnerAliasInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetEmail200ResponseDataInnerAliasInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetEmail200ResponseDataInnerAliasInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

