
import 'package:cadetbank/core/utils/result/result.dart';
import 'package:cadetbank/data/models/response/player_card_response.dart';
import 'package:cadetbank/domain/repositories/player_card_repository.dart';

class GetPlayerCardsUseCase {
  final PlayerCardRepository playerCardRepository;
  const GetPlayerCardsUseCase(this.playerCardRepository);

  Future<Result<List<PlayerCardResponse>>> call() {
    return playerCardRepository.getPlayerCards();
  }
}
