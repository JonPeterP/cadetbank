
class Endpoints {
  const Endpoints._();

  static const String login = '/auth/login';

  // Valorant Weapons
  static const String weapons = '/v1/weapons';
  static String weaponByUuid(String uuid) => '/v1/weapons/$uuid';
  static const String weaponSkins = '/v1/weapons/skins';
  static String weaponSkinByUuid(String uuid) => '/v1/weapons/skins/$uuid';
  static const String weaponSkinChromas = '/v1/weapons/skinchromas';
  static String weaponSkinChromaByUuid(String uuid) =>
      '/v1/weapons/skinchromas/$uuid';
  static const String weaponSkinLevels = '/v1/weapons/skinlevels';
  static String weaponSkinLevelByUuid(String uuid) =>
      '/v1/weapons/skinlevels/$uuid';
}