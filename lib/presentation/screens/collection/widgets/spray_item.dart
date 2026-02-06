import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:flutter/material.dart';

class SprayItem extends StatelessWidget {
  final String sprayName;
  final String sprayType; // e.g., "Preround", "Midround", "Postround"
  final VoidCallback? onTap;

  const SprayItem({
    super.key,
    required this.sprayName,
    required this.sprayType,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.s10),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.pink[900]!.withOpacity(0.5),
              Colors.red[900]!.withOpacity(0.5),
            ],
          ),
          border: Border.all(
            color: Colors.pink[300]!.withOpacity(0.4),
            width: Dimens.s1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.pink[300]!.withOpacity(0.15),
              blurRadius: Dimens.s6,
            ),
          ],
        ),
        child: Stack(
          children: [
            // Spray image placeholder
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.s10),
                  color: Colors.grey[800],
                ),
                child: Icon(
                  Icons.camera,
                  size: Dimens.s36,
                  color: Colors.grey[600],
                ),
              ),
            ),
            // Content overlay
            Padding(
              padding: const EdgeInsets.all(Dimens.s10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      sprayName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: Dimens.s11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Dimens.s6,
                      vertical: Dimens.s2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.pink[600]!.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(Dimens.s4),
                    ),
                    child: Text(
                      sprayType,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: Dimens.s8,
                        fontWeight: FontWeight.w500,
                      ),
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
