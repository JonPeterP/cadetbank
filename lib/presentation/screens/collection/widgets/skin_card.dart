import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:flutter/material.dart';

class SkinCard extends StatelessWidget {
  final String skinName;
  final String weaponType;
  final String rarity; // Premium, Exclusive, Deluxe, Select, Standard
  final Color rarityColor;
  final VoidCallback? onTap;

  const SkinCard({
    super.key,
    required this.skinName,
    required this.weaponType,
    required this.rarity,
    required this.rarityColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.s12),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.grey[800]!,
              Colors.grey[900]!,
            ],
          ),
          border: Border.all(
            color: rarityColor.withOpacity(0.5),
            width: Dimens.s2,
          ),
          boxShadow: [
            BoxShadow(
              color: rarityColor.withOpacity(0.3),
              blurRadius: Dimens.s8,
              spreadRadius: Dimens.s2,
            ),
          ],
        ),
        child: Stack(
          children: [
            // Placeholder for skin image
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.s12),
                  color: Colors.grey[800],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.image,
                      size: Dimens.s40,
                      color: Colors.grey[600],
                    ),
                  ],
                ),
              ),
            ),
            // Content
            Padding(
              padding: const EdgeInsets.all(Dimens.s12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Dimens.s8,
                          vertical: Dimens.s4,
                        ),
                        decoration: BoxDecoration(
                          color: rarityColor.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(Dimens.s4),
                        ),
                        child: Text(
                          rarity,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: Dimens.s10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: Dimens.s8),
                      SizedBox(
                        width: 120,
                        child: Text(
                          skinName,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: Dimens.s12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    weaponType,
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: Dimens.s10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
