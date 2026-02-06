import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:flutter/material.dart';

class PlayerCardWidget extends StatelessWidget {
  final String cardName;
  final String characterName;
  final VoidCallback? onTap;

  const PlayerCardWidget({
    super.key,
    required this.cardName,
    required this.characterName,
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
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue[900]!.withOpacity(0.6),
              Colors.purple[900]!.withOpacity(0.6),
            ],
          ),
          border: Border.all(
            color: Colors.blue[300]!.withOpacity(0.4),
            width: Dimens.s1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.blue[300]!.withOpacity(0.2),
              blurRadius: Dimens.s6,
            ),
          ],
        ),
        child: Stack(
          children: [
            // Card image placeholder
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.s8),
                  color: Colors.grey[800],
                ),
                child: Icon(
                  Icons.person,
                  size: Dimens.s40,
                  color: Colors.grey[600],
                ),
              ),
            ),
            // Content overlay
            Padding(
              padding: const EdgeInsets.all(Dimens.s8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      cardName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: Dimens.s11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    characterName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.blue[200],
                      fontSize: Dimens.s9,
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
