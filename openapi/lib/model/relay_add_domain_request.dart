//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RelayAddDomainRequest {
  /// Returns a new [RelayAddDomainRequest] instance.
  RelayAddDomainRequest({
    this.domain,
    this.host,
    this.port,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? port;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RelayAddDomainRequest &&
    other.domain == domain &&
    other.host == host &&
    other.port == port;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain == null ? 0 : domain!.hashCode) +
    (host == null ? 0 : host!.hashCode) +
    (port == null ? 0 : port!.hashCode);

  @override
  String toString() => 'RelayAddDomainRequest[domain=$domain, host=$host, port=$port]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
    if (this.port != null) {
      json[r'port'] = this.port;
    } else {
      json[r'port'] = null;
    }
    return json;
  }

  /// Returns a new [RelayAddDomainRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RelayAddDomainRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RelayAddDomainRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RelayAddDomainRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RelayAddDomainRequest(
        domain: mapValueOfType<String>(json, r'domain'),
        host: mapValueOfType<String>(json, r'host'),
        port: mapValueOfType<int>(json, r'port'),
      );
    }
    return null;
  }

  static List<RelayAddDomainRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RelayAddDomainRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RelayAddDomainRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RelayAddDomainRequest> mapFromJson(dynamic json) {
    final map = <String, RelayAddDomainRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RelayAddDomainRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RelayAddDomainRequest-objects as value to a dart map
  static Map<String, List<RelayAddDomainRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RelayAddDomainRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RelayAddDomainRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

