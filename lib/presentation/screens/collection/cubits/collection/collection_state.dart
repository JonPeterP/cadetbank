import 'package:cadetbank/data/models/response/player_card_response.dart';
import 'package:cadetbank/data/models/response/spray_response.dart';
import 'package:cadetbank/data/models/response/weapon_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_state.freezed.dart';

@freezed
class CollectionState with _$CollectionState {
  const factory CollectionState.initial() = _Initial;
  const factory CollectionState.loading() = _Loading;
  const factory CollectionState.loaded({
    required List<WeaponResponse> weapons,
    required List<SprayResponse> sprays,
    required List<PlayerCardResponse> playerCards,
    @Default({}) Map<String, dynamic> selectedWeaponSkins,
    PlayerCardResponse? selectedPlayerCard,
    @Default({}) Map<int, SprayResponse> selectedSprays,
  }) = _Loaded;
  const factory CollectionState.failed(String errorMessage) = _Failed;
}
