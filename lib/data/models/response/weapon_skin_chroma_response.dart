import 'package:freezed_annotation/freezed_annotation.dart';

part 'weapon_skin_chroma_response.freezed.dart';
part 'weapon_skin_chroma_response.g.dart';

@freezed
class WeaponSkinChromaResponse with _$WeaponSkinChromaResponse {
  const factory WeaponSkinChromaResponse({
    required String uuid,
    required String displayName,
    String? displayIcon,
    String? fullRender,
    String? swatch,
    String? streamedVideo,
    String? assetPath,
  }) = _WeaponSkinChromaResponse;

  factory WeaponSkinChromaResponse.fromJson(Map<String, dynamic> json) =>
      _$WeaponSkinChromaResponseFromJson(json);
}
