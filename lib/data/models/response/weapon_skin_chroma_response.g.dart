// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_skin_chroma_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeaponSkinChromaResponseImpl _$$WeaponSkinChromaResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WeaponSkinChromaResponseImpl(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      displayIcon: json['displayIcon'] as String?,
      fullRender: json['fullRender'] as String?,
      swatch: json['swatch'] as String?,
      streamedVideo: json['streamedVideo'] as String?,
      assetPath: json['assetPath'] as String?,
    );

Map<String, dynamic> _$$WeaponSkinChromaResponseImplToJson(
        _$WeaponSkinChromaResponseImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'displayIcon': instance.displayIcon,
      'fullRender': instance.fullRender,
      'swatch': instance.swatch,
      'streamedVideo': instance.streamedVideo,
      'assetPath': instance.assetPath,
    };
