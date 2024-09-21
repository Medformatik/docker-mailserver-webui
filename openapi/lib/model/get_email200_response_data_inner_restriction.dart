//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetEmail200ResponseDataInnerRestriction {
  /// Returns a new [GetEmail200ResponseDataInnerRestriction] instance.
  GetEmail200ResponseDataInnerRestriction({
    this.send,
    this.receive,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? send;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? receive;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetEmail200ResponseDataInnerRestriction &&
    other.send == send &&
    other.receive == receive;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (send == null ? 0 : send!.hashCode) +
    (receive == null ? 0 : receive!.hashCode);

  @override
  String toString() => 'GetEmail200ResponseDataInnerRestriction[send=$send, receive=$receive]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.send != null) {
      json[r'send'] = this.send;
    } else {
      json[r'send'] = null;
    }
    if (this.receive != null) {
      json[r'receive'] = this.receive;
    } else {
      json[r'receive'] = null;
    }
    return json;
  }

  /// Returns a new [GetEmail200ResponseDataInnerRestriction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetEmail200ResponseDataInnerRestriction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetEmail200ResponseDataInnerRestriction[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetEmail200ResponseDataInnerRestriction[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetEmail200ResponseDataInnerRestriction(
        send: mapValueOfType<bool>(json, r'send'),
        receive: mapValueOfType<bool>(json, r'receive'),
      );
    }
    return null;
  }

  static List<GetEmail200ResponseDataInnerRestriction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetEmail200ResponseDataInnerRestriction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetEmail200ResponseDataInnerRestriction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetEmail200ResponseDataInnerRestriction> mapFromJson(dynamic json) {
    final map = <String, GetEmail200ResponseDataInnerRestriction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetEmail200ResponseDataInnerRestriction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetEmail200ResponseDataInnerRestriction-objects as value to a dart map
  static Map<String, List<GetEmail200ResponseDataInnerRestriction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetEmail200ResponseDataInnerRestriction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetEmail200ResponseDataInnerRestriction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

