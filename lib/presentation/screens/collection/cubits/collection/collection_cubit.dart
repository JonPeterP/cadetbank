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

  void selectWeaponSkin(WeaponResponse weapon, dynamic skin) {
    state.maybeMap(
      loaded: (loadedState) {
        final updatedSelections = Map<String, dynamic>.from(
          loadedState.selectedWeaponSkins,
        );
        updatedSelections[weapon.uuid] = skin;
        emit(loadedState.copyWith(selectedWeaponSkins: updatedSelections));
      },
      orElse: () {},
    );
  }

  void resetWeaponSkins() {
    state.maybeMap(
      loaded: (loadedState) {
        emit(loadedState.copyWith(selectedWeaponSkins: {}));
      },
      orElse: () {},
    );
  }

  void selectPlayerCard(PlayerCardResponse card) {
    state.maybeMap(
      loaded: (loadedState) {
        emit(loadedState.copyWith(selectedPlayerCard: card));
      },
      orElse: () {},
    );
  }

  void selectSpray(int slotIndex, SprayResponse spray) {
    state.maybeMap(
      loaded: (loadedState) {
        final updated = Map<int, SprayResponse>.from(loadedState.selectedSprays);
        updated[slotIndex] = spray;
        emit(loadedState.copyWith(selectedSprays: updated));
      },
      orElse: () {},
    );
  }
}
