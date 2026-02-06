import 'package:cadetbank/core/res/values/endpoints.dart';
import 'package:cadetbank/data/data_source/spray_data_source.dart';
import 'package:cadetbank/data/models/response/spray_response.dart';
import 'package:dio/dio.dart';

class SprayRemoteDataSourceImpl implements SprayDataSource {
  final Dio dio;
  SprayRemoteDataSourceImpl(this.dio);

  @override
  Future<List<SprayResponse>> getSprays() async {
    final response = await dio.get(Endpoints.sprays);
    final List data = response.data['data'];
    return data.map((e) => SprayResponse.fromJson(e)).toList();
  }

  @override
  Future<SprayResponse> getSprayByUuid(String uuid) async {
    final response = await dio.get(Endpoints.sprayByUuid(uuid));
    return SprayResponse.fromJson(response.data['data']);
  }
}
