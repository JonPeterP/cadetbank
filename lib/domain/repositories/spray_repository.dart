
import 'package:cadetbank/core/utils/result/result.dart';
import 'package:cadetbank/data/models/response/spray_response.dart';

abstract interface class SprayRepository {
  Future<Result<List<SprayResponse>>> getSprays();
  Future<Result<SprayResponse>> getSprayByUuid(String uuid);
}
