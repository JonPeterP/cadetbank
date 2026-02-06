
import 'package:cadetbank/core/res/errors/error.dart';
import 'package:cadetbank/core/utils/result/result.dart';
import 'package:cadetbank/data/data_source/weapon_data_source.dart';
import 'package:cadetbank/data/models/response/weapon_response.dart';
import 'package:cadetbank/data/models/response/weapon_skin_response.dart';
import 'package:cadetbank/domain/repositories/weapon_repository.dart';

class WeaponRepositoryImpl implements WeaponRepository {
  final WeaponDataSource weaponDataSource;
  WeaponRepositoryImpl(this.weaponDataSource);

  @override
  Future<Result<List<WeaponResponse>>> getWeapons() async {
    try {
      final response = await weaponDataSource.getWeapons();
      return Result.success(response);
    } catch (_) {
      return Result.failure(const DefaultError());
    }
  }

  @override
  Future<Result<WeaponResponse>> getWeaponByUuid(String uuid) async {
    try {
      final response = await weaponDataSource.getWeaponByUuid(uuid);
      return Result.success(response);
    } catch (_) {
      return Result.failure(const DefaultError());
    }
  }

  @override
  Future<Result<List<WeaponSkinResponse>>> getWeaponSkins() async {
    try {
      final response = await weaponDataSource.getWeaponSkins();
      return Result.success(response);
    } catch (_) {
      return Result.failure(const DefaultError());
    }
  }

  @override
  Future<Result<WeaponSkinResponse>> getWeaponSkinByUuid(String uuid) async {
    try {
      final response = await weaponDataSource.getWeaponSkinByUuid(uuid);
      return Result.success(response);
    } catch (_) {
      return Result.failure(const DefaultError());
    }
  }
}
