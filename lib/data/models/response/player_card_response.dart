import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_card_response.freezed.dart';
part 'player_card_response.g.dart';

@freezed
class PlayerCardResponse with _$PlayerCardResponse {
  const factory PlayerCardResponse({
    required String uuid,
    required String displayName,
    String? themeUuid,
    String? displayIcon,
    String? smallArt,
    String? wideArt,
    String? largeArt,
    String? assetPath,
  }) = _PlayerCardResponse;

  factory PlayerCardResponse.fromJson(Map<String, dynamic> json) =>
      _$PlayerCardResponseFromJson(json);
}
