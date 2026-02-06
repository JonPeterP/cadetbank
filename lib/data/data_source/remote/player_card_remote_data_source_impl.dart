import 'package:cadetbank/core/res/values/endpoints.dart';
import 'package:cadetbank/data/data_source/player_card_data_source.dart';
import 'package:cadetbank/data/models/response/player_card_response.dart';
import 'package:dio/dio.dart';

class PlayerCardRemoteDataSourceImpl implements PlayerCardDataSource {
  final Dio dio;
  PlayerCardRemoteDataSourceImpl(this.dio);

  @override
  Future<List<PlayerCardResponse>> getPlayerCards() async {
    final response = await dio.get(Endpoints.playerCards);
    final List data = response.data['data'];
    return data.map((e) => PlayerCardResponse.fromJson(e)).toList();
  }

  @override
  Future<PlayerCardResponse> getPlayerCardByUuid(String uuid) async {
    final response = await dio.get(Endpoints.playerCardByUuid(uuid));
    return PlayerCardResponse.fromJson(response.data['data']);
  }
}
