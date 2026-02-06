
import 'package:cadetbank/core/utils/result/result.dart';
import 'package:cadetbank/data/models/response/spray_response.dart';
import 'package:cadetbank/domain/repositories/spray_repository.dart';

class GetSpraysUseCase {
  final SprayRepository sprayRepository;
  const GetSpraysUseCase(this.sprayRepository);

  Future<Result<List<SprayResponse>>> call() {
    return sprayRepository.getSprays();
  }
}
