
import 'package:cadetbank/core/utils/result/result.dart';
import 'package:cadetbank/data/models/response/player_card_response.dart';

abstract interface class PlayerCardRepository {
  Future<Result<List<PlayerCardResponse>>> getPlayerCards();
  Future<Result<PlayerCardResponse>> getPlayerCardByUuid(String uuid);
}
