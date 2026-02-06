import 'package:cadetbank/core/res/values/endpoints.dart';
import 'package:cadetbank/data/data_source/weapon_data_source.dart';
import 'package:cadetbank/data/models/response/weapon_response.dart';
import 'package:cadetbank/data/models/response/weapon_skin_response.dart';
import 'package:dio/dio.dart';

class WeaponRemoteDataSourceImpl implements WeaponDataSource {
  final Dio dio;
  WeaponRemoteDataSourceImpl(this.dio);

  @override
  Future<List<WeaponResponse>> getWeapons() async {
    final response = await dio.get(Endpoints.weapons);
    final List data = response.data['data'];
    return data.map((e) => WeaponResponse.fromJson(e)).toList();
  }

  @override
  Future<WeaponResponse> getWeaponByUuid(String uuid) async {
    final response = await dio.get(Endpoints.weaponByUuid(uuid));
    return WeaponResponse.fromJson(response.data['data']);
  }

  @override
  Future<List<WeaponSkinResponse>> getWeaponSkins() async {
    final response = await dio.get(Endpoints.weaponSkins);
    final List data = response.data['data'];
    return data.map((e) => WeaponSkinResponse.fromJson(e)).toList();
  }

  @override
  Future<WeaponSkinResponse> getWeaponSkinByUuid(String uuid) async {
    final response = await dio.get(Endpoints.weaponSkinByUuid(uuid));
    return WeaponSkinResponse.fromJson(response.data['data']);
  }
}
