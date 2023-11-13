import { UserAvatarColor, UserEntity } from '@app/infra/entities';
import { Optional } from '@nestjs/common';
import { ApiProperty } from '@nestjs/swagger';
import { IsEnum } from 'class-validator';

export const getRandomAvatarColor = (value: number): UserAvatarColor => {
  const values = Object.values(UserAvatarColor);
  const randomIndex = Math.floor(value % values.length);
  return values[randomIndex] as UserAvatarColor;
};

export class UserDto {
  id!: string;
  name!: string;
  email!: string;
  profileImagePath!: string;
  @IsEnum(UserAvatarColor)
  @Optional()
  @ApiProperty({ enumName: 'UserAvatarColor', enum: UserAvatarColor })
  avatarColor!: UserAvatarColor | null;
}

export class UserResponseDto extends UserDto {
  storageLabel!: string | null;
  externalPath!: string | null;
  shouldChangePassword!: boolean;
  isAdmin!: boolean;
  createdAt!: Date;
  deletedAt!: Date | null;
  updatedAt!: Date;
  oauthId!: string;
  memoriesEnabled?: boolean;
}

export const mapSimpleUser = (entity: UserEntity): UserDto => {
  return {
    id: entity.id,
    email: entity.email,
    name: entity.name,
    profileImagePath: entity.profileImagePath,
    avatarColor:
      entity.avatarColor ??
      getRandomAvatarColor(
        entity.email
          .split('')
          .map((letter) => letter.charCodeAt(0))
          .reduce((a, b) => a + b, 0),
      ),
  };
};

export function mapUser(entity: UserEntity): UserResponseDto {
  return {
    ...mapSimpleUser(entity),
    storageLabel: entity.storageLabel,
    externalPath: entity.externalPath,
    shouldChangePassword: entity.shouldChangePassword,
    isAdmin: entity.isAdmin,
    createdAt: entity.createdAt,
    deletedAt: entity.deletedAt,
    updatedAt: entity.updatedAt,
    oauthId: entity.oauthId,
    memoriesEnabled: entity.memoriesEnabled,
  };
}
