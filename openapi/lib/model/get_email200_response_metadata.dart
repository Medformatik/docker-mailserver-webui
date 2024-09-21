//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetEmail200ResponseMetadata {
  /// Returns a new [GetEmail200ResponseMetadata] instance.
  GetEmail200ResponseMetadata({
    this.request,
    this.pagination,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetEmail200ResponseMetadataRequest? request;

  Object? pagination;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetEmail200ResponseMetadata &&
    other.request == request &&
    other.pagination == pagination;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (request == null ? 0 : request!.hashCode) +
    (pagination == null ? 0 : pagination!.hashCode);

  @override
  String toString() => 'GetEmail200ResponseMetadata[request=$request, pagination=$pagination]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.request != null) {
      json[r'request'] = this.request;
    } else {
      json[r'request'] = null;
    }
    if (this.pagination != null) {
      json[r'pagination'] = this.pagination;
    } else {
      json[r'pagination'] = null;
    }
    return json;
  }

  /// Returns a new [GetEmail200ResponseMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetEmail200ResponseMetadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetEmail200ResponseMetadata[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetEmail200ResponseMetadata[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetEmail200ResponseMetadata(
        request: GetEmail200ResponseMetadataRequest.fromJson(json[r'request']),
        pagination: mapValueOfType<Object>(json, r'pagination'),
      );
    }
    return null;
  }

  static List<GetEmail200ResponseMetadata> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetEmail200ResponseMetadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetEmail200ResponseMetadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetEmail200ResponseMetadata> mapFromJson(dynamic json) {
    final map = <String, GetEmail200ResponseMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetEmail200ResponseMetadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetEmail200ResponseMetadata-objects as value to a dart map
  static Map<String, List<GetEmail200ResponseMetadata>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetEmail200ResponseMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetEmail200ResponseMetadata.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

