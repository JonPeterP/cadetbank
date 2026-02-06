import 'package:cadetbank/data/models/response/player_card_response.dart';
import 'package:cadetbank/data/models/response/spray_response.dart';
import 'package:cadetbank/data/models/response/weapon_response.dart';
import 'package:cadetbank/domain/usecases/get_player_cards_usecase.dart';
import 'package:cadetbank/domain/usecases/get_sprays_usecase.dart';
import 'package:cadetbank/domain/usecases/get_weapons_usecase.dart';
import 'package:cadetbank/presentation/screens/collection/cubits/collection/collection_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CollectionCubit extends Cubit<CollectionState> {
  final GetWeaponsUseCase getWeaponsUseCase;
  final GetSpraysUseCase getSpraysUseCase;
  final GetPlayerCardsUseCase getPlayerCardsUseCase;

  CollectionCubit({
    required this.getWeaponsUseCase,
    required this.getSpraysUseCase,
    required this.getPlayerCardsUseCase,
  }) : super(const CollectionState.initial());

  void loadCollection() async {
    emit(const CollectionState.loading());

    final weaponsResult = await getWeaponsUseCase();
    final spraysResult = await getSpraysUseCase();
    final playerCardsResult = await getPlayerCardsUseCase();

    if (weaponsResult.isFailure ||
        spraysResult.isFailure ||
        playerCardsResult.isFailure) {
      final error = weaponsResult.errorOrNull ??
          spraysResult.errorOrNull ??
          playerCardsResult.errorOrNull;

      emit(
        CollectionState.failed(
          error?.message ?? 'Failed to load collection',
        ),
      );
      return;
    }

    emit(
      CollectionState.loaded(
        weapons: weaponsResult.valueOrNull ?? <WeaponResponse>[],
        sprays: spraysResult.valueOrNull ?? <SprayResponse>[],
        playerCards: playerCardsResult.valueOrNull ?? <PlayerCardResponse>[],
        selectedWeaponSkins: {}, // start empty
      ),
    );
  }

  // ✅ NEW METHOD
  void selectWeaponSkin(WeaponResponse weapon, dynamic skin) {
    state.maybeWhen(
      loaded: (
          weapons,
          sprays,
          playerCards,
          selectedWeaponSkins,
          ) {
        final updatedSelections = Map<String, dynamic>.from(
          selectedWeaponSkins,
        );

        updatedSelections[weapon.uuid] = skin;

        emit(
          CollectionState.loaded(
            weapons: weapons,
            sprays: sprays,
            playerCards: playerCards,
            selectedWeaponSkins: updatedSelections,
          ),
        );
      },
      orElse: () {},
    );
  }
}
