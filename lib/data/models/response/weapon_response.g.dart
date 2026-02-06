// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weapon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeaponResponseImpl _$$WeaponResponseImplFromJson(Map<String, dynamic> json) =>
    _$WeaponResponseImpl(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      displayIcon: json['displayIcon'] as String?,
      skins: (json['skins'] as List<dynamic>?)
              ?.map(
                  (e) => WeaponSkinResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$WeaponResponseImplToJson(
        _$WeaponResponseImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'displayName': instance.displayName,
      'displayIcon': instance.displayIcon,
      'skins': instance.skins,
    };
