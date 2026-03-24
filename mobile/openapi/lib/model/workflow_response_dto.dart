//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WorkflowResponseDto {
  /// Returns a new [WorkflowResponseDto] instance.
  WorkflowResponseDto({
    this.actions = const [],
    required this.createdAt,
    required this.description,
    required this.enabled,
    this.filters = const [],
    required this.id,
    required this.name,
    required this.ownerId,
    required this.triggerType,
  });

  /// Workflow actions
  List<WorkflowActionResponseDto> actions;

  /// Creation date
  String createdAt;

  /// Workflow description
  String description;

  /// Workflow enabled
  bool enabled;

  /// Workflow filters
  List<WorkflowFilterResponseDto> filters;

  /// Workflow ID
  String id;

  /// Workflow name
  String? name;

  /// Owner user ID
  String ownerId;

  /// Workflow trigger type
  PluginTriggerType triggerType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkflowResponseDto &&
    _deepEquality.equals(other.actions, actions) &&
    other.createdAt == createdAt &&
    other.description == description &&
    other.enabled == enabled &&
    _deepEquality.equals(other.filters, filters) &&
    other.id == id &&
    other.name == name &&
    other.ownerId == ownerId &&
    other.triggerType == triggerType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actions.hashCode) +
    (createdAt.hashCode) +
    (description.hashCode) +
    (enabled.hashCode) +
    (filters.hashCode) +
    (id.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (ownerId.hashCode) +
    (triggerType.hashCode);

  @override
  String toString() => 'WorkflowResponseDto[actions=$actions, createdAt=$createdAt, description=$description, enabled=$enabled, filters=$filters, id=$id, name=$name, ownerId=$ownerId, triggerType=$triggerType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'actions'] = this.actions;
      json[r'createdAt'] = this.createdAt;
      json[r'description'] = this.description;
      json[r'enabled'] = this.enabled;
      json[r'filters'] = this.filters;
      json[r'id'] = this.id;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'ownerId'] = this.ownerId;
      json[r'triggerType'] = this.triggerType;
    return json;
  }

  /// Returns a new [WorkflowResponseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorkflowResponseDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'actions'), 'Required key "WorkflowResponseDto[actions]" is missing from JSON.');
        assert(json[r'actions'] != null, 'Required key "WorkflowResponseDto[actions]" has a null value in JSON.');
        assert(json.containsKey(r'createdAt'), 'Required key "WorkflowResponseDto[createdAt]" is missing from JSON.');
        assert(json[r'createdAt'] != null, 'Required key "WorkflowResponseDto[createdAt]" has a null value in JSON.');
        assert(json.containsKey(r'description'), 'Required key "WorkflowResponseDto[description]" is missing from JSON.');
        assert(json[r'description'] != null, 'Required key "WorkflowResponseDto[description]" has a null value in JSON.');
        assert(json.containsKey(r'enabled'), 'Required key "WorkflowResponseDto[enabled]" is missing from JSON.');
        assert(json[r'enabled'] != null, 'Required key "WorkflowResponseDto[enabled]" has a null value in JSON.');
        assert(json.containsKey(r'filters'), 'Required key "WorkflowResponseDto[filters]" is missing from JSON.');
        assert(json[r'filters'] != null, 'Required key "WorkflowResponseDto[filters]" has a null value in JSON.');
        assert(json.containsKey(r'id'), 'Required key "WorkflowResponseDto[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "WorkflowResponseDto[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "WorkflowResponseDto[name]" is missing from JSON.');
        assert(json.containsKey(r'ownerId'), 'Required key "WorkflowResponseDto[ownerId]" is missing from JSON.');
        assert(json[r'ownerId'] != null, 'Required key "WorkflowResponseDto[ownerId]" has a null value in JSON.');
        assert(json.containsKey(r'triggerType'), 'Required key "WorkflowResponseDto[triggerType]" is missing from JSON.');
        assert(json[r'triggerType'] != null, 'Required key "WorkflowResponseDto[triggerType]" has a null value in JSON.');
        return true;
      }());

      return WorkflowResponseDto(
        actions: WorkflowActionResponseDto.listFromJson(json[r'actions']),
        createdAt: mapValueOfType<String>(json, r'createdAt')!,
        description: mapValueOfType<String>(json, r'description')!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        filters: WorkflowFilterResponseDto.listFromJson(json[r'filters']),
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name'),
        ownerId: mapValueOfType<String>(json, r'ownerId')!,
        triggerType: PluginTriggerType.fromJson(json[r'triggerType'])!,
      );
    }
    return null;
  }

  static List<WorkflowResponseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkflowResponseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkflowResponseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorkflowResponseDto> mapFromJson(dynamic json) {
    final map = <String, WorkflowResponseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkflowResponseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorkflowResponseDto-objects as value to a dart map
  static Map<String, List<WorkflowResponseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorkflowResponseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WorkflowResponseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'actions',
    'createdAt',
    'description',
    'enabled',
    'filters',
    'id',
    'name',
    'ownerId',
    'triggerType',
  };
}

