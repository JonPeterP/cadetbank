import 'package:cadetbank/data/models/response/spray_response.dart';

abstract interface class SprayDataSource {
  Future<List<SprayResponse>> getSprays();
  Future<SprayResponse> getSprayByUuid(String uuid);
}
