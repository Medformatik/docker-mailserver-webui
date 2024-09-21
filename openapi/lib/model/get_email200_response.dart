//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetEmail200Response {
  /// Returns a new [GetEmail200Response] instance.
  GetEmail200Response({
    this.statusCode,
    this.metadata,
    this.data = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? statusCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetEmail200ResponseMetadata? metadata;

  List<GetEmail200ResponseDataInner> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetEmail200Response &&
    other.statusCode == statusCode &&
    other.metadata == metadata &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (statusCode == null ? 0 : statusCode!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'GetEmail200Response[statusCode=$statusCode, metadata=$metadata, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.statusCode != null) {
      json[r'statusCode'] = this.statusCode;
    } else {
      json[r'statusCode'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [GetEmail200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetEmail200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetEmail200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetEmail200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetEmail200Response(
        statusCode: mapValueOfType<int>(json, r'statusCode'),
        metadata: GetEmail200ResponseMetadata.fromJson(json[r'metadata']),
        data: GetEmail200ResponseDataInner.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<GetEmail200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetEmail200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetEmail200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetEmail200Response> mapFromJson(dynamic json) {
    final map = <String, GetEmail200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetEmail200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetEmail200Response-objects as value to a dart map
  static Map<String, List<GetEmail200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetEmail200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetEmail200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

