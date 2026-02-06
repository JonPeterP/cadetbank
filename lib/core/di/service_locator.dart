import 'package:cadetbank/core/utils/dio_factory.dart';
import 'package:cadetbank/data/data_source/auth_data_source.dart';
import 'package:cadetbank/data/data_source/player_card_data_source.dart';
import 'package:cadetbank/data/data_source/remote/auth_remote_data_source_impl.dart';
import 'package:cadetbank/data/data_source/remote/player_card_remote_data_source_impl.dart';
import 'package:cadetbank/data/data_source/remote/spray_remote_data_source_impl.dart';
import 'package:cadetbank/data/data_source/remote/weapon_remote_data_source_impl.dart';
import 'package:cadetbank/data/data_source/spray_data_source.dart';
import 'package:cadetbank/data/data_source/weapon_data_source.dart';
import 'package:cadetbank/data/repositories/auth_repository_impl.dart';
import 'package:cadetbank/data/repositories/player_card_repository_impl.dart';
import 'package:cadetbank/data/repositories/spray_repository_impl.dart';
import 'package:cadetbank/data/repositories/weapon_repository_impl.dart';
import 'package:cadetbank/domain/repositories/auth_repository.dart';
import 'package:cadetbank/domain/repositories/player_card_repository.dart';
import 'package:cadetbank/domain/repositories/spray_repository.dart';
import 'package:cadetbank/domain/repositories/weapon_repository.dart';
import 'package:cadetbank/domain/usecases/get_player_cards_usecase.dart';
import 'package:cadetbank/domain/usecases/get_sprays_usecase.dart';
import 'package:cadetbank/domain/usecases/get_weapon_skins_usecase.dart';
import 'package:cadetbank/domain/usecases/get_weapons_usecase.dart';
import 'package:cadetbank/domain/usecases/login_usecase.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> setupDependencies() async {
  serviceLocator.registerLazySingleton<DioFactory>(() => const DioFactory());
  final dio = await serviceLocator<DioFactory>().createDio();

  // Auth
  serviceLocator.registerLazySingleton<AuthDataSource>(() => AuthRemoteDataSourceImpl(dio));
  serviceLocator.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(serviceLocator()));
  serviceLocator.registerLazySingleton<LoginUseCase>(() => LoginUseCase(serviceLocator()));

  // Weapons
  serviceLocator.registerLazySingleton<WeaponDataSource>(() => WeaponRemoteDataSourceImpl(dio));
  serviceLocator.registerLazySingleton<WeaponRepository>(() => WeaponRepositoryImpl(serviceLocator()));
  serviceLocator.registerLazySingleton<GetWeaponsUseCase>(() => GetWeaponsUseCase(serviceLocator()));
  serviceLocator.registerLazySingleton<GetWeaponSkinsUseCase>(() => GetWeaponSkinsUseCase(serviceLocator()));

  // Sprays
  serviceLocator.registerLazySingleton<SprayDataSource>(() => SprayRemoteDataSourceImpl(dio));
  serviceLocator.registerLazySingleton<SprayRepository>(() => SprayRepositoryImpl(serviceLocator()));
  serviceLocator.registerLazySingleton<GetSpraysUseCase>(() => GetSpraysUseCase(serviceLocator()));

  // Player Cards
  serviceLocator.registerLazySingleton<PlayerCardDataSource>(() => PlayerCardRemoteDataSourceImpl(dio));
  serviceLocator.registerLazySingleton<PlayerCardRepository>(() => PlayerCardRepositoryImpl(serviceLocator()));
  serviceLocator.registerLazySingleton<GetPlayerCardsUseCase>(() => GetPlayerCardsUseCase(serviceLocator()));
}