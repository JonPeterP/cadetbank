import 'package:cadetbank/data/models/response/weapon_response.dart';
import 'package:cadetbank/data/models/response/weapon_skin_response.dart';

abstract interface class WeaponDataSource {
  Future<List<WeaponResponse>> getWeapons();
  Future<WeaponResponse> getWeaponByUuid(String uuid);
  Future<List<WeaponSkinResponse>> getWeaponSkins();
  Future<WeaponSkinResponse> getWeaponSkinByUuid(String uuid);
}
