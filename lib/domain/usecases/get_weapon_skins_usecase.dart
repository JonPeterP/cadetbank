
import 'package:cadetbank/core/utils/result/result.dart';
import 'package:cadetbank/data/models/response/weapon_skin_response.dart';
import 'package:cadetbank/domain/repositories/weapon_repository.dart';

class GetWeaponSkinsUseCase {
  final WeaponRepository weaponRepository;
  const GetWeaponSkinsUseCase(this.weaponRepository);

  Future<Result<List<WeaponSkinResponse>>> call() {
    return weaponRepository.getWeaponSkins();
  }
}
