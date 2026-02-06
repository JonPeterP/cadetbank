// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spray_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SprayResponseImpl _$$SprayResponseImplFromJson(Map<String, dynamic> json) =>
    _$SprayResponseImpl(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      category: json['category'] as String?,
      themeUuid: json['themeUuid'] as String?,
      displayIcon: json['displayIcon'] as String?,
      fullIcon: json['fullIcon'] as String?,
      fullTransparentIcon: json['fullTransparentIcon'] as String?,
      animationPng: json['animationPng'] as String?,
      animationGif: json['animationGif'] as String?,
      assetPath: json['assetPath'] as String?,
      levels: (json['levels'] as List<dynamic>?)
              ?.map(
                  (e) => SprayLevelResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SprayResponseImplToJson(_$SprayResponseImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'category': instance.category,
      'themeUuid': instance.themeUuid,
      'displayIcon': instance.displayIcon,
      'fullIcon': instance.fullIcon,
      'fullTransparentIcon': instance.fullTransparentIcon,
      'animationPng': instance.animationPng,
      'animationGif': instance.animationGif,
      'assetPath': instance.assetPath,
      'levels': instance.levels,
    };
