import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cadetbank/data/models/response/weapon_skin_response.dart';

part 'weapon_response.freezed.dart';
part 'weapon_response.g.dart';

@freezed
class WeaponResponse with _$WeaponResponse {
  const factory WeaponResponse({
    required String uuid,
    required String displayName,
    String? displayIcon,
    @Default([]) List<WeaponSkinResponse> skins,
  }) = _WeaponResponse;

  factory WeaponResponse.fromJson(Map<String, dynamic> json) =>
      _$WeaponResponseFromJson(json);
}
