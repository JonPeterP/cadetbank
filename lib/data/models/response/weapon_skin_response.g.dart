// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_skin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeaponSkinResponseImpl _$$WeaponSkinResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WeaponSkinResponseImpl(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      themeUuid: json['themeUuid'] as String?,
      contentTierUuid: json['contentTierUuid'] as String?,
      displayIcon: json['displayIcon'] as String?,
      wallpaper: json['wallpaper'] as String?,
      assetPath: json['assetPath'] as String?,
      chromas: (json['chromas'] as List<dynamic>?)
              ?.map((e) =>
                  WeaponSkinChromaResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      levels: (json['levels'] as List<dynamic>?)
              ?.map((e) =>
                  WeaponSkinLevelResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$WeaponSkinResponseImplToJson(
        _$WeaponSkinResponseImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'themeUuid': instance.themeUuid,
      'contentTierUuid': instance.contentTierUuid,
      'displayIcon': instance.displayIcon,
      'wallpaper': instance.wallpaper,
      'assetPath': instance.assetPath,
      'chromas': instance.chromas,
      'levels': instance.levels,
    };
