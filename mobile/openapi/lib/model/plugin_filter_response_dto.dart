//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PluginFilterResponseDto {
  /// Returns a new [PluginFilterResponseDto] instance.
  PluginFilterResponseDto({
    required this.description,
    required this.id,
    required this.methodName,
    required this.pluginId,
    required this.schema,
    this.supportedContexts = const [],
    required this.title,
  });

  /// Filter description
  String description;

  /// Filter ID
  String id;

  /// Method name
  String methodName;

  /// Plugin ID
  String pluginId;

  /// Filter schema
  Object? schema;

  /// Supported contexts
  List<PluginContextType> supportedContexts;

  /// Filter title
  String title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PluginFilterResponseDto &&
    other.description == description &&
    other.id == id &&
    other.methodName == methodName &&
    other.pluginId == pluginId &&
    other.schema == schema &&
    _deepEquality.equals(other.supportedContexts, supportedContexts) &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (description.hashCode) +
    (id.hashCode) +
    (methodName.hashCode) +
    (pluginId.hashCode) +
    (schema == null ? 0 : schema!.hashCode) +
    (supportedContexts.hashCode) +
    (title.hashCode);

  @override
  String toString() => 'PluginFilterResponseDto[description=$description, id=$id, methodName=$methodName, pluginId=$pluginId, schema=$schema, supportedContexts=$supportedContexts, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'description'] = this.description;
      json[r'id'] = this.id;
      json[r'methodName'] = this.methodName;
      json[r'pluginId'] = this.pluginId;
    if (this.schema != null) {
      json[r'schema'] = this.schema;
    } else {
      json[r'schema'] = null;
    }
      json[r'supportedContexts'] = this.supportedContexts;
      json[r'title'] = this.title;
    return json;
  }

  /// Returns a new [PluginFilterResponseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PluginFilterResponseDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'description'), 'Required key "PluginFilterResponseDto[description]" is missing from JSON.');
        assert(json[r'description'] != null, 'Required key "PluginFilterResponseDto[description]" has a null value in JSON.');
        assert(json.containsKey(r'id'), 'Required key "PluginFilterResponseDto[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "PluginFilterResponseDto[id]" has a null value in JSON.');
        assert(json.containsKey(r'methodName'), 'Required key "PluginFilterResponseDto[methodName]" is missing from JSON.');
        assert(json[r'methodName'] != null, 'Required key "PluginFilterResponseDto[methodName]" has a null value in JSON.');
        assert(json.containsKey(r'pluginId'), 'Required key "PluginFilterResponseDto[pluginId]" is missing from JSON.');
        assert(json[r'pluginId'] != null, 'Required key "PluginFilterResponseDto[pluginId]" has a null value in JSON.');
        assert(json.containsKey(r'schema'), 'Required key "PluginFilterResponseDto[schema]" is missing from JSON.');
        assert(json.containsKey(r'supportedContexts'), 'Required key "PluginFilterResponseDto[supportedContexts]" is missing from JSON.');
        assert(json[r'supportedContexts'] != null, 'Required key "PluginFilterResponseDto[supportedContexts]" has a null value in JSON.');
        assert(json.containsKey(r'title'), 'Required key "PluginFilterResponseDto[title]" is missing from JSON.');
        assert(json[r'title'] != null, 'Required key "PluginFilterResponseDto[title]" has a null value in JSON.');
        return true;
      }());

      return PluginFilterResponseDto(
        description: mapValueOfType<String>(json, r'description')!,
        id: mapValueOfType<String>(json, r'id')!,
        methodName: mapValueOfType<String>(json, r'methodName')!,
        pluginId: mapValueOfType<String>(json, r'pluginId')!,
        schema: mapValueOfType<Object>(json, r'schema'),
        supportedContexts: PluginContextType.listFromJson(json[r'supportedContexts']),
        title: mapValueOfType<String>(json, r'title')!,
      );
    }
    return null;
  }

  static List<PluginFilterResponseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PluginFilterResponseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PluginFilterResponseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PluginFilterResponseDto> mapFromJson(dynamic json) {
    final map = <String, PluginFilterResponseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PluginFilterResponseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PluginFilterResponseDto-objects as value to a dart map
  static Map<String, List<PluginFilterResponseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PluginFilterResponseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PluginFilterResponseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'description',
    'id',
    'methodName',
    'pluginId',
    'schema',
    'supportedContexts',
    'title',
  };
}

