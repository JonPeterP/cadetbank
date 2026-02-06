
import 'package:cadetbank/core/res/errors/error.dart';
import 'package:cadetbank/core/utils/result/result.dart';
import 'package:cadetbank/data/data_source/player_card_data_source.dart';
import 'package:cadetbank/data/models/response/player_card_response.dart';
import 'package:cadetbank/domain/repositories/player_card_repository.dart';

class PlayerCardRepositoryImpl implements PlayerCardRepository {
  final PlayerCardDataSource playerCardDataSource;
  PlayerCardRepositoryImpl(this.playerCardDataSource);

  @override
  Future<Result<List<PlayerCardResponse>>> getPlayerCards() async {
    try {
      final response = await playerCardDataSource.getPlayerCards();
      return Result.success(response);
    } catch (_) {
      return Result.failure(const DefaultError());
    }
  }

  @override
  Future<Result<PlayerCardResponse>> getPlayerCardByUuid(String uuid) async {
    try {
      final response = await playerCardDataSource.getPlayerCardByUuid(uuid);
      return Result.success(response);
    } catch (_) {
      return Result.failure(const DefaultError());
    }
  }
}
