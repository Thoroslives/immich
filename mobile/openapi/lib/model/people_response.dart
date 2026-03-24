//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PeopleResponse {
  /// Returns a new [PeopleResponse] instance.
  PeopleResponse({
    this.enabled = true,
    this.sidebarWeb = false,
  });

  /// Whether people are enabled
  bool enabled;

  /// Whether people appear in web sidebar
  bool sidebarWeb;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PeopleResponse &&
    other.enabled == enabled &&
    other.sidebarWeb == sidebarWeb;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled.hashCode) +
    (sidebarWeb.hashCode);

  @override
  String toString() => 'PeopleResponse[enabled=$enabled, sidebarWeb=$sidebarWeb]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = this.enabled;
      json[r'sidebarWeb'] = this.sidebarWeb;
    return json;
  }

  /// Returns a new [PeopleResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PeopleResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'enabled'), 'Required key "PeopleResponse[enabled]" is missing from JSON.');
        assert(json[r'enabled'] != null, 'Required key "PeopleResponse[enabled]" has a null value in JSON.');
        assert(json.containsKey(r'sidebarWeb'), 'Required key "PeopleResponse[sidebarWeb]" is missing from JSON.');
        assert(json[r'sidebarWeb'] != null, 'Required key "PeopleResponse[sidebarWeb]" has a null value in JSON.');
        return true;
      }());

      return PeopleResponse(
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        sidebarWeb: mapValueOfType<bool>(json, r'sidebarWeb')!,
      );
    }
    return null;
  }

  static List<PeopleResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PeopleResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PeopleResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PeopleResponse> mapFromJson(dynamic json) {
    final map = <String, PeopleResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PeopleResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PeopleResponse-objects as value to a dart map
  static Map<String, List<PeopleResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PeopleResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PeopleResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'enabled',
    'sidebarWeb',
  };
}

