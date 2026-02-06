// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spray_level_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SprayLevelResponseImpl _$$SprayLevelResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SprayLevelResponseImpl(
      uuid: json['uuid'] as String,
      sprayLevel: (json['sprayLevel'] as num).toInt(),
      displayName: json['displayName'] as String,
      displayIcon: json['displayIcon'] as String?,
      assetPath: json['assetPath'] as String?,
    );

Map<String, dynamic> _$$SprayLevelResponseImplToJson(
        _$SprayLevelResponseImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'sprayLevel': instance.sprayLevel,
      'displayName': instance.displayName,
      'displayIcon': instance.displayIcon,
      'assetPath': instance.assetPath,
    };
