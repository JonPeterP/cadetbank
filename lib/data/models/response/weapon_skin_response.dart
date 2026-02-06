import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cadetbank/data/models/response/weapon_skin_chroma_response.dart';
import 'package:cadetbank/data/models/response/weapon_skin_level_response.dart';

part 'weapon_skin_response.freezed.dart';
part 'weapon_skin_response.g.dart';

@freezed
class WeaponSkinResponse with _$WeaponSkinResponse {
  const factory WeaponSkinResponse({
    required String uuid,
    required String displayName,
    String? themeUuid,
    String? contentTierUuid,
    String? displayIcon,
    String? wallpaper,
    String? assetPath,
    @Default([]) List<WeaponSkinChromaResponse> chromas,
    @Default([]) List<WeaponSkinLevelResponse> levels,
  }) = _WeaponSkinResponse;

  factory WeaponSkinResponse.fromJson(Map<String, dynamic> json) =>
      _$WeaponSkinResponseFromJson(json);
}
