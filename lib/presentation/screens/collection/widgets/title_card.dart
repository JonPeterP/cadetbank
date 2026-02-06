import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  final String titleText;
  final int titleNumber;
  final VoidCallback? onTap;

  const TitleCard({
    super.key,
    required this.titleText,
    required this.titleNumber,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.s8),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.amber[900]!.withOpacity(0.5),
              Colors.orange[900]!.withOpacity(0.5),
            ],
          ),
          border: Border.all(
            color: Colors.amber[400]!.withOpacity(0.4),
            width: Dimens.s1,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Dimens.s12,
              vertical: Dimens.s8,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  titleText,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: Dimens.s12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: Dimens.s4),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimens.s6,
                    vertical: Dimens.s2,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.amber[600]!.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(Dimens.s4),
                  ),
                  child: Text(
                    '#$titleNumber',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: Dimens.s9,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
