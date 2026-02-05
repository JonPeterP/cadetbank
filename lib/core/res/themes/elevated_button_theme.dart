// coverage:ignore-file

part of 'theme.dart';

/// elevated button theme - Valorant style
ElevatedButtonThemeData get _elevatedButtonTheme => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.valorantRed,
        disabledBackgroundColor: AppColors.valorantRedDark,
        foregroundColor: AppColors.valorantWhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimens.s8)),
        elevation: Dimens.s0,
        padding: const EdgeInsets.all(Dimens.s16),
      ),
    );
