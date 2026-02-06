// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_card_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerCardResponseImpl _$$PlayerCardResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PlayerCardResponseImpl(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      themeUuid: json['themeUuid'] as String?,
      displayIcon: json['displayIcon'] as String?,
      smallArt: json['smallArt'] as String?,
      wideArt: json['wideArt'] as String?,
      largeArt: json['largeArt'] as String?,
      assetPath: json['assetPath'] as String?,
    );

Map<String, dynamic> _$$PlayerCardResponseImplToJson(
        _$PlayerCardResponseImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'themeUuid': instance.themeUuid,
      'displayIcon': instance.displayIcon,
      'smallArt': instance.smallArt,
      'wideArt': instance.wideArt,
      'largeArt': instance.largeArt,
      'assetPath': instance.assetPath,
    };
