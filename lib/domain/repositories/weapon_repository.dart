
import 'package:cadetbank/core/utils/result/result.dart';
import 'package:cadetbank/data/models/response/weapon_response.dart';
import 'package:cadetbank/data/models/response/weapon_skin_response.dart';

abstract interface class WeaponRepository {
  Future<Result<List<WeaponResponse>>> getWeapons();
  Future<Result<WeaponResponse>> getWeaponByUuid(String uuid);
  Future<Result<List<WeaponSkinResponse>>> getWeaponSkins();
  Future<Result<WeaponSkinResponse>> getWeaponSkinByUuid(String uuid);
}
