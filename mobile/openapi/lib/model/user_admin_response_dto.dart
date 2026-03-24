//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserAdminResponseDto {
  /// Returns a new [UserAdminResponseDto] instance.
  UserAdminResponseDto({
    required this.avatarColor,
    required this.createdAt,
    required this.deletedAt,
    required this.email,
    required this.id,
    required this.isAdmin,
    required this.license,
    required this.name,
    required this.oauthId,
    required this.profileChangedAt,
    required this.profileImagePath,
    required this.quotaSizeInBytes,
    required this.quotaUsageInBytes,
    required this.shouldChangePassword,
    required this.status,
    required this.storageLabel,
    required this.updatedAt,
  });

  /// Avatar color
  UserAvatarColor avatarColor;

  /// Creation date
  DateTime createdAt;

  /// Deletion date
  DateTime? deletedAt;

  /// User email
  String email;

  /// User ID
  String id;

  /// Is admin user
  bool isAdmin;

  /// User license
  UserLicense? license;

  /// User name
  String name;

  /// OAuth ID
  String oauthId;

  /// Profile change date
  DateTime profileChangedAt;

  /// Profile image path
  String profileImagePath;

  /// Storage quota in bytes
  int? quotaSizeInBytes;

  /// Storage usage in bytes
  int? quotaUsageInBytes;

  /// Require password change on next login
  bool shouldChangePassword;

  /// User status
  UserStatus status;

  /// Storage label
  String? storageLabel;

  /// Last update date
  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserAdminResponseDto &&
    other.avatarColor == avatarColor &&
    other.createdAt == createdAt &&
    other.deletedAt == deletedAt &&
    other.email == email &&
    other.id == id &&
    other.isAdmin == isAdmin &&
    other.license == license &&
    other.name == name &&
    other.oauthId == oauthId &&
    other.profileChangedAt == profileChangedAt &&
    other.profileImagePath == profileImagePath &&
    other.quotaSizeInBytes == quotaSizeInBytes &&
    other.quotaUsageInBytes == quotaUsageInBytes &&
    other.shouldChangePassword == shouldChangePassword &&
    other.status == status &&
    other.storageLabel == storageLabel &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (avatarColor.hashCode) +
    (createdAt.hashCode) +
    (deletedAt == null ? 0 : deletedAt!.hashCode) +
    (email.hashCode) +
    (id.hashCode) +
    (isAdmin.hashCode) +
    (license == null ? 0 : license!.hashCode) +
    (name.hashCode) +
    (oauthId.hashCode) +
    (profileChangedAt.hashCode) +
    (profileImagePath.hashCode) +
    (quotaSizeInBytes == null ? 0 : quotaSizeInBytes!.hashCode) +
    (quotaUsageInBytes == null ? 0 : quotaUsageInBytes!.hashCode) +
    (shouldChangePassword.hashCode) +
    (status.hashCode) +
    (storageLabel == null ? 0 : storageLabel!.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'UserAdminResponseDto[avatarColor=$avatarColor, createdAt=$createdAt, deletedAt=$deletedAt, email=$email, id=$id, isAdmin=$isAdmin, license=$license, name=$name, oauthId=$oauthId, profileChangedAt=$profileChangedAt, profileImagePath=$profileImagePath, quotaSizeInBytes=$quotaSizeInBytes, quotaUsageInBytes=$quotaUsageInBytes, shouldChangePassword=$shouldChangePassword, status=$status, storageLabel=$storageLabel, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'avatarColor'] = this.avatarColor;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.deletedAt != null) {
      json[r'deletedAt'] = this.deletedAt!.toUtc().toIso8601String();
    } else {
      json[r'deletedAt'] = null;
    }
      json[r'email'] = this.email;
      json[r'id'] = this.id;
      json[r'isAdmin'] = this.isAdmin;
    if (this.license != null) {
      json[r'license'] = this.license;
    } else {
      json[r'license'] = null;
    }
      json[r'name'] = this.name;
      json[r'oauthId'] = this.oauthId;
      json[r'profileChangedAt'] = this.profileChangedAt.toUtc().toIso8601String();
      json[r'profileImagePath'] = this.profileImagePath;
    if (this.quotaSizeInBytes != null) {
      json[r'quotaSizeInBytes'] = this.quotaSizeInBytes;
    } else {
      json[r'quotaSizeInBytes'] = null;
    }
    if (this.quotaUsageInBytes != null) {
      json[r'quotaUsageInBytes'] = this.quotaUsageInBytes;
    } else {
      json[r'quotaUsageInBytes'] = null;
    }
      json[r'shouldChangePassword'] = this.shouldChangePassword;
      json[r'status'] = this.status;
    if (this.storageLabel != null) {
      json[r'storageLabel'] = this.storageLabel;
    } else {
      json[r'storageLabel'] = null;
    }
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [UserAdminResponseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserAdminResponseDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'avatarColor'), 'Required key "UserAdminResponseDto[avatarColor]" is missing from JSON.');
        assert(json[r'avatarColor'] != null, 'Required key "UserAdminResponseDto[avatarColor]" has a null value in JSON.');
        assert(json.containsKey(r'createdAt'), 'Required key "UserAdminResponseDto[createdAt]" is missing from JSON.');
        assert(json[r'createdAt'] != null, 'Required key "UserAdminResponseDto[createdAt]" has a null value in JSON.');
        assert(json.containsKey(r'deletedAt'), 'Required key "UserAdminResponseDto[deletedAt]" is missing from JSON.');
        assert(json.containsKey(r'email'), 'Required key "UserAdminResponseDto[email]" is missing from JSON.');
        assert(json[r'email'] != null, 'Required key "UserAdminResponseDto[email]" has a null value in JSON.');
        assert(json.containsKey(r'id'), 'Required key "UserAdminResponseDto[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "UserAdminResponseDto[id]" has a null value in JSON.');
        assert(json.containsKey(r'isAdmin'), 'Required key "UserAdminResponseDto[isAdmin]" is missing from JSON.');
        assert(json[r'isAdmin'] != null, 'Required key "UserAdminResponseDto[isAdmin]" has a null value in JSON.');
        assert(json.containsKey(r'license'), 'Required key "UserAdminResponseDto[license]" is missing from JSON.');
        assert(json.containsKey(r'name'), 'Required key "UserAdminResponseDto[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "UserAdminResponseDto[name]" has a null value in JSON.');
        assert(json.containsKey(r'oauthId'), 'Required key "UserAdminResponseDto[oauthId]" is missing from JSON.');
        assert(json[r'oauthId'] != null, 'Required key "UserAdminResponseDto[oauthId]" has a null value in JSON.');
        assert(json.containsKey(r'profileChangedAt'), 'Required key "UserAdminResponseDto[profileChangedAt]" is missing from JSON.');
        assert(json[r'profileChangedAt'] != null, 'Required key "UserAdminResponseDto[profileChangedAt]" has a null value in JSON.');
        assert(json.containsKey(r'profileImagePath'), 'Required key "UserAdminResponseDto[profileImagePath]" is missing from JSON.');
        assert(json[r'profileImagePath'] != null, 'Required key "UserAdminResponseDto[profileImagePath]" has a null value in JSON.');
        assert(json.containsKey(r'quotaSizeInBytes'), 'Required key "UserAdminResponseDto[quotaSizeInBytes]" is missing from JSON.');
        assert(json.containsKey(r'quotaUsageInBytes'), 'Required key "UserAdminResponseDto[quotaUsageInBytes]" is missing from JSON.');
        assert(json.containsKey(r'shouldChangePassword'), 'Required key "UserAdminResponseDto[shouldChangePassword]" is missing from JSON.');
        assert(json[r'shouldChangePassword'] != null, 'Required key "UserAdminResponseDto[shouldChangePassword]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "UserAdminResponseDto[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "UserAdminResponseDto[status]" has a null value in JSON.');
        assert(json.containsKey(r'storageLabel'), 'Required key "UserAdminResponseDto[storageLabel]" is missing from JSON.');
        assert(json.containsKey(r'updatedAt'), 'Required key "UserAdminResponseDto[updatedAt]" is missing from JSON.');
        assert(json[r'updatedAt'] != null, 'Required key "UserAdminResponseDto[updatedAt]" has a null value in JSON.');
        return true;
      }());

      return UserAdminResponseDto(
        avatarColor: UserAvatarColor.fromJson(json[r'avatarColor'])!,
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        deletedAt: mapDateTime(json, r'deletedAt', r''),
        email: mapValueOfType<String>(json, r'email')!,
        id: mapValueOfType<String>(json, r'id')!,
        isAdmin: mapValueOfType<bool>(json, r'isAdmin')!,
        license: UserLicense.fromJson(json[r'license']),
        name: mapValueOfType<String>(json, r'name')!,
        oauthId: mapValueOfType<String>(json, r'oauthId')!,
        profileChangedAt: mapDateTime(json, r'profileChangedAt', r'')!,
        profileImagePath: mapValueOfType<String>(json, r'profileImagePath')!,
        quotaSizeInBytes: mapValueOfType<int>(json, r'quotaSizeInBytes'),
        quotaUsageInBytes: mapValueOfType<int>(json, r'quotaUsageInBytes'),
        shouldChangePassword: mapValueOfType<bool>(json, r'shouldChangePassword')!,
        status: UserStatus.fromJson(json[r'status'])!,
        storageLabel: mapValueOfType<String>(json, r'storageLabel'),
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
      );
    }
    return null;
  }

  static List<UserAdminResponseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserAdminResponseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserAdminResponseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserAdminResponseDto> mapFromJson(dynamic json) {
    final map = <String, UserAdminResponseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserAdminResponseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserAdminResponseDto-objects as value to a dart map
  static Map<String, List<UserAdminResponseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserAdminResponseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserAdminResponseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'avatarColor',
    'createdAt',
    'deletedAt',
    'email',
    'id',
    'isAdmin',
    'license',
    'name',
    'oauthId',
    'profileChangedAt',
    'profileImagePath',
    'quotaSizeInBytes',
    'quotaUsageInBytes',
    'shouldChangePassword',
    'status',
    'storageLabel',
    'updatedAt',
  };
}

