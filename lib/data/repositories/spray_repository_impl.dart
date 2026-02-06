
import 'package:cadetbank/core/res/errors/error.dart';
import 'package:cadetbank/core/utils/result/result.dart';
import 'package:cadetbank/data/data_source/spray_data_source.dart';
import 'package:cadetbank/data/models/response/spray_response.dart';
import 'package:cadetbank/domain/repositories/spray_repository.dart';

class SprayRepositoryImpl implements SprayRepository {
  final SprayDataSource sprayDataSource;
  SprayRepositoryImpl(this.sprayDataSource);

  @override
  Future<Result<List<SprayResponse>>> getSprays() async {
    try {
      final response = await sprayDataSource.getSprays();
      return Result.success(response);
    } catch (_) {
      return Result.failure(const DefaultError());
    }
  }

  @override
  Future<Result<SprayResponse>> getSprayByUuid(String uuid) async {
    try {
      final response = await sprayDataSource.getSprayByUuid(uuid);
      return Result.success(response);
    } catch (_) {
      return Result.failure(const DefaultError());
    }
  }
}
