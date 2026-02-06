import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cadetbank/data/models/response/spray_level_response.dart';

part 'spray_response.freezed.dart';
part 'spray_response.g.dart';

@freezed
class SprayResponse with _$SprayResponse {
  const factory SprayResponse({
    required String uuid,
    required String displayName,
    String? category,
    String? themeUuid,
    String? displayIcon,
    String? fullIcon,
    String? fullTransparentIcon,
    String? animationPng,
    String? animationGif,
    String? assetPath,
    @Default([]) List<SprayLevelResponse> levels,
  }) = _SprayResponse;

  factory SprayResponse.fromJson(Map<String, dynamic> json) =>
      _$SprayResponseFromJson(json);
}
