import 'package:freezed_annotation/freezed_annotation.dart';

part 'weapon_skin_level_response.freezed.dart';
part 'weapon_skin_level_response.g.dart';

@freezed
class WeaponSkinLevelResponse with _$WeaponSkinLevelResponse {
  const factory WeaponSkinLevelResponse({
    required String uuid,
    required String displayName,
    String? levelItem,
    String? displayIcon,
    String? streamedVideo,
    String? assetPath,
  }) = _WeaponSkinLevelResponse;

  factory WeaponSkinLevelResponse.fromJson(Map<String, dynamic> json) =>
      _$WeaponSkinLevelResponseFromJson(json);
}
