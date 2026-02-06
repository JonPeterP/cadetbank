import 'package:cadetbank/data/models/response/player_card_response.dart';

abstract interface class PlayerCardDataSource {
  Future<List<PlayerCardResponse>> getPlayerCards();
  Future<PlayerCardResponse> getPlayerCardByUuid(String uuid);
}
