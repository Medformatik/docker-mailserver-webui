//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AddEmailRestrictRequest {
  /// Returns a new [AddEmailRestrictRequest] instance.
  AddEmailRestrictRequest({
    this.access,
    this.email,
  });

  AddEmailRestrictRequestAccessEnum? access;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddEmailRestrictRequest &&
    other.access == access &&
    other.email == email;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (access == null ? 0 : access!.hashCode) +
    (email == null ? 0 : email!.hashCode);

  @override
  String toString() => 'AddEmailRestrictRequest[access=$access, email=$email]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.access != null) {
      json[r'access'] = this.access;
    } else {
      json[r'access'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    return json;
  }

  /// Returns a new [AddEmailRestrictRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddEmailRestrictRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AddEmailRestrictRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AddEmailRestrictRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AddEmailRestrictRequest(
        access: AddEmailRestrictRequestAccessEnum.fromJson(json[r'access']),
        email: mapValueOfType<String>(json, r'email'),
      );
    }
    return null;
  }

  static List<AddEmailRestrictRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddEmailRestrictRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddEmailRestrictRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddEmailRestrictRequest> mapFromJson(dynamic json) {
    final map = <String, AddEmailRestrictRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddEmailRestrictRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddEmailRestrictRequest-objects as value to a dart map
  static Map<String, List<AddEmailRestrictRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddEmailRestrictRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddEmailRestrictRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class AddEmailRestrictRequestAccessEnum {
  /// Instantiate a new enum with the provided [value].
  const AddEmailRestrictRequestAccessEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const send = AddEmailRestrictRequestAccessEnum._(r'send');
  static const receive = AddEmailRestrictRequestAccessEnum._(r'receive');

  /// List of all possible values in this [enum][AddEmailRestrictRequestAccessEnum].
  static const values = <AddEmailRestrictRequestAccessEnum>[
    send,
    receive,
  ];

  static AddEmailRestrictRequestAccessEnum? fromJson(dynamic value) => AddEmailRestrictRequestAccessEnumTypeTransformer().decode(value);

  static List<AddEmailRestrictRequestAccessEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddEmailRestrictRequestAccessEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddEmailRestrictRequestAccessEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AddEmailRestrictRequestAccessEnum] to String,
/// and [decode] dynamic data back to [AddEmailRestrictRequestAccessEnum].
class AddEmailRestrictRequestAccessEnumTypeTransformer {
  factory AddEmailRestrictRequestAccessEnumTypeTransformer() => _instance ??= const AddEmailRestrictRequestAccessEnumTypeTransformer._();

  const AddEmailRestrictRequestAccessEnumTypeTransformer._();

  String encode(AddEmailRestrictRequestAccessEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AddEmailRestrictRequestAccessEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AddEmailRestrictRequestAccessEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'send': return AddEmailRestrictRequestAccessEnum.send;
        case r'receive': return AddEmailRestrictRequestAccessEnum.receive;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AddEmailRestrictRequestAccessEnumTypeTransformer] instance.
  static AddEmailRestrictRequestAccessEnumTypeTransformer? _instance;
}


