//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SetupDkimRequest {
  /// Returns a new [SetupDkimRequest] instance.
  SetupDkimRequest({
    this.selector,
    this.domain,
    this.keytype,
    this.keysize = const SetupDkimRequestKeysizeEnum._(2048),
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? selector;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  SetupDkimRequestKeytypeEnum? keytype;

  SetupDkimRequestKeysizeEnum keysize;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetupDkimRequest && other.selector == selector && other.domain == domain && other.keytype == keytype && other.keysize == keysize;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (selector == null ? 0 : selector!.hashCode) + (domain == null ? 0 : domain!.hashCode) + (keytype == null ? 0 : keytype!.hashCode) + (keysize.hashCode);

  @override
  String toString() => 'SetupDkimRequest[selector=$selector, domain=$domain, keytype=$keytype, keysize=$keysize]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.selector != null) {
      json[r'selector'] = this.selector;
    } else {
      json[r'selector'] = null;
    }
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.keytype != null) {
      json[r'keytype'] = this.keytype;
    } else {
      json[r'keytype'] = null;
    }
    json[r'keysize'] = this.keysize;
    return json;
  }

  /// Returns a new [SetupDkimRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetupDkimRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SetupDkimRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SetupDkimRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SetupDkimRequest(
        selector: mapValueOfType<String>(json, r'selector'),
        domain: mapValueOfType<String>(json, r'domain'),
        keytype: SetupDkimRequestKeytypeEnum.fromJson(json[r'keytype']),
        keysize: SetupDkimRequestKeysizeEnum.fromJson(json[r'keysize']) ?? SetupDkimRequestKeysizeEnum.number2048,
      );
    }
    return null;
  }

  static List<SetupDkimRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SetupDkimRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetupDkimRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetupDkimRequest> mapFromJson(dynamic json) {
    final map = <String, SetupDkimRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetupDkimRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetupDkimRequest-objects as value to a dart map
  static Map<String, List<SetupDkimRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<SetupDkimRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SetupDkimRequest.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}

class SetupDkimRequestKeytypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SetupDkimRequestKeytypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const rsa = SetupDkimRequestKeytypeEnum._(r'rsa');
  static const ed25519 = SetupDkimRequestKeytypeEnum._(r'ed25519');

  /// List of all possible values in this [enum][SetupDkimRequestKeytypeEnum].
  static const values = <SetupDkimRequestKeytypeEnum>[
    rsa,
    ed25519,
  ];

  static SetupDkimRequestKeytypeEnum? fromJson(dynamic value) => SetupDkimRequestKeytypeEnumTypeTransformer().decode(value);

  static List<SetupDkimRequestKeytypeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SetupDkimRequestKeytypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetupDkimRequestKeytypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SetupDkimRequestKeytypeEnum] to String,
/// and [decode] dynamic data back to [SetupDkimRequestKeytypeEnum].
class SetupDkimRequestKeytypeEnumTypeTransformer {
  factory SetupDkimRequestKeytypeEnumTypeTransformer() => _instance ??= const SetupDkimRequestKeytypeEnumTypeTransformer._();

  const SetupDkimRequestKeytypeEnumTypeTransformer._();

  String encode(SetupDkimRequestKeytypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SetupDkimRequestKeytypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SetupDkimRequestKeytypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'rsa':
          return SetupDkimRequestKeytypeEnum.rsa;
        case r'ed25519':
          return SetupDkimRequestKeytypeEnum.ed25519;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SetupDkimRequestKeytypeEnumTypeTransformer] instance.
  static SetupDkimRequestKeytypeEnumTypeTransformer? _instance;
}

class SetupDkimRequestKeysizeEnum {
  /// Instantiate a new enum with the provided [value].
  const SetupDkimRequestKeysizeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number1024 = SetupDkimRequestKeysizeEnum._(1024);
  static const number2048 = SetupDkimRequestKeysizeEnum._(2048);
  static const number4096 = SetupDkimRequestKeysizeEnum._(4096);

  /// List of all possible values in this [enum][SetupDkimRequestKeysizeEnum].
  static const values = <SetupDkimRequestKeysizeEnum>[
    number1024,
    number2048,
    number4096,
  ];

  static SetupDkimRequestKeysizeEnum? fromJson(dynamic value) => SetupDkimRequestKeysizeEnumTypeTransformer().decode(value);

  static List<SetupDkimRequestKeysizeEnum> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <SetupDkimRequestKeysizeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetupDkimRequestKeysizeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SetupDkimRequestKeysizeEnum] to int,
/// and [decode] dynamic data back to [SetupDkimRequestKeysizeEnum].
class SetupDkimRequestKeysizeEnumTypeTransformer {
  factory SetupDkimRequestKeysizeEnumTypeTransformer() => _instance ??= const SetupDkimRequestKeysizeEnumTypeTransformer._();

  const SetupDkimRequestKeysizeEnumTypeTransformer._();

  int encode(SetupDkimRequestKeysizeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SetupDkimRequestKeysizeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SetupDkimRequestKeysizeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 1024:
          return SetupDkimRequestKeysizeEnum.number1024;
        case 2048:
          return SetupDkimRequestKeysizeEnum.number2048;
        case 4096:
          return SetupDkimRequestKeysizeEnum.number4096;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SetupDkimRequestKeysizeEnumTypeTransformer] instance.
  static SetupDkimRequestKeysizeEnumTypeTransformer? _instance;
}
