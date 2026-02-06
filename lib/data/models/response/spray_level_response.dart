import 'package:freezed_annotation/freezed_annotation.dart';

part 'spray_level_response.freezed.dart';
part 'spray_level_response.g.dart';

@freezed
class SprayLevelResponse with _$SprayLevelResponse {
  const factory SprayLevelResponse({
    required String uuid,
    required int sprayLevel,
    required String displayName,
    String? displayIcon,
    String? assetPath,
  }) = _SprayLevelResponse;

  factory SprayLevelResponse.fromJson(Map<String, dynamic> json) =>
      _$SprayLevelResponseFromJson(json);
}
