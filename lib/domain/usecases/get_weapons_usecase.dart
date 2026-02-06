
import 'package:cadetbank/core/utils/result/result.dart';
import 'package:cadetbank/data/models/response/weapon_response.dart';
import 'package:cadetbank/domain/repositories/weapon_repository.dart';

class GetWeaponsUseCase {
  final WeaponRepository weaponRepository;
  const GetWeaponsUseCase(this.weaponRepository);

  Future<Result<List<WeaponResponse>>> call() {
    return weaponRepository.getWeapons();
  }
}
