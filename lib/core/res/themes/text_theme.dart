// coverage:ignore-file

part of 'theme.dart';

/// text theme - Valorant style
TextTheme get _textTheme => const TextTheme(
  // Display
  displayLarge: TextStyle(
    fontSize: Dimens.s57,
    fontWeight: FontWeight.w900,
    color: AppColors.valorantWhite,
    letterSpacing: -0.5,
  ),
  displayMedium: TextStyle(
    fontSize: Dimens.s45,
    fontWeight: FontWeight.w900,
    color: AppColors.valorantWhite,
    letterSpacing: -0.5,
  ),
  displaySmall: TextStyle(
    fontSize: Dimens.s36,
    fontWeight: FontWeight.w800,
    color: AppColors.valorantWhite,
  ),

  // Headline
  headlineLarge: TextStyle(
    fontSize: Dimens.s32,
    fontWeight: FontWeight.w800,
    color: AppColors.valorantWhite,
  ),
  headlineMedium: TextStyle(
    fontSize: Dimens.s28,
    fontWeight: FontWeight.w700,
    color: AppColors.valorantWhite,
  ),
  headlineSmall: TextStyle(
    fontSize: Dimens.s24,
    fontWeight: FontWeight.w700,
    color: AppColors.valorantWhite,
  ),

  // Title
  titleLarge: TextStyle(
    fontSize: Dimens.s22,
    fontWeight: FontWeight.w700,
    color: AppColors.valorantWhite,
  ),
  titleMedium: TextStyle(
    fontSize: Dimens.s16,
    fontWeight: FontWeight.w600,
    color: AppColors.valorantWhite,
  ),
  titleSmall: TextStyle(
    fontSize: Dimens.s14,
    fontWeight: FontWeight.w600,
    color: AppColors.valorantWhite,
  ),

  // Body
  bodyLarge: TextStyle(
    fontSize: Dimens.s16,
    fontWeight: FontWeight.w400,
    color: AppColors.valorantWhiteOff,
  ),
  bodyMedium: TextStyle(
    fontSize: Dimens.s14,
    fontWeight: FontWeight.w400,
    color: AppColors.valorantWhiteOff,
  ),
  bodySmall: TextStyle(
    fontSize: Dimens.s12,
    fontWeight: FontWeight.w400,
    color: AppColors.valorantGrayLight,
  ),

  // Label (buttons, chips, etc.)
  labelLarge: TextStyle(
    fontSize: Dimens.s20,
    fontWeight: FontWeight.w700,
    color: AppColors.valorantWhite,
    letterSpacing: 0.5,
  ),
  labelMedium: TextStyle(
    fontSize: Dimens.s14,
    fontWeight: FontWeight.w700,
    color: AppColors.valorantWhite,
    letterSpacing: 0.5,
  ),
  labelSmall: TextStyle(
    fontSize: Dimens.s12,
    fontWeight: FontWeight.w600,
    color: AppColors.valorantWhite,
  ),
);
