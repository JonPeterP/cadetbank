import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/presentation/screens/collection/widgets/player_card_widget.dart';
import 'package:cadetbank/presentation/screens/collection/widgets/skin_card.dart';
import 'package:cadetbank/presentation/screens/collection/widgets/spray_item.dart';
import 'package:cadetbank/presentation/screens/collection/widgets/title_card.dart';
import 'package:flutter/material.dart';

class LoadoutSection extends StatelessWidget {
  final bool isSkinsSection;
  final bool isPlayerCardSection;
  final bool isTitleSection;
  final bool isSpraySection;

  const LoadoutSection({
    super.key,
    this.isSkinsSection = false,
    this.isPlayerCardSection = false,
    this.isTitleSection = false,
    this.isSpraySection = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isSkinsSection) {
      return _buildSkinsGrid();
    } else if (isPlayerCardSection) {
      return _buildPlayerCardsGrid();
    } else if (isTitleSection) {
      return _buildTitlesGrid();
    } else if (isSpraySection) {
      return _buildSprayGrid();
    } else {
      // Default loadout display
      return _buildActiveLoadout();
    }
  }

  Widget _buildActiveLoadout() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.s12),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.grey[850]!,
            Colors.grey[900]!,
          ],
        ),
        border: Border.all(
          color: Colors.amber[600]!.withOpacity(0.3),
          width: Dimens.s2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.amber[600]!.withOpacity(0.2),
            blurRadius: Dimens.s12,
            spreadRadius: Dimens.s2,
          ),
        ],
      ),
      padding: const EdgeInsets.all(Dimens.s16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Player Card slot
          _buildLoadoutSlot(
            label: 'Player Card',
            icon: Icons.person,
            content: 'NOIR Arctic / Lone Wolf',
          ),
          const SizedBox(height: Dimens.s16),

          // Player Title slot
          _buildLoadoutSlot(
            label: 'Player Title',
            icon: Icons.text_fields,
            content: 'Valorant Badge Holder',
          ),
          const SizedBox(height: Dimens.s16),

          // Spray slot
          _buildLoadoutSlot(
            label: 'Spray',
            icon: Icons.face,
            content: 'Preround Spray #1',
          ),
        ],
      ),
    );
  }

  Widget _buildLoadoutSlot({
    required String label,
    required IconData icon,
    required String content,
  }) {
    return Container(
      padding: const EdgeInsets.all(Dimens.s12),
      decoration: BoxDecoration(
        color: Colors.grey[800]!.withOpacity(0.6),
        borderRadius: BorderRadius.circular(Dimens.s8),
        border: Border.all(
          color: Colors.grey[700]!,
          width: Dimens.s1,
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.amber[600],
            size: Dimens.s24,
          ),
          const SizedBox(width: Dimens.s12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: Dimens.s11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: Dimens.s4),
                Text(
                  content,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: Dimens.s13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey[600],
            size: Dimens.s16,
          ),
        ],
      ),
    );
  }

  Widget _buildSkinsGrid() {
    // Mobile-friendly grouped sections by weapon class with skin category splits
    final Map<String, List<String>> categories = {
      'Sidearms': ['Classic', 'Shorty', 'Frenzy', 'Ghost', 'Bandit', 'Sheriff'],
      'SMGs': ['Stinger', 'Spectre'],
      'Shotguns': ['Bucky', 'Judge'],
      'Rifles': ['Bulldog', 'Guardian', 'Phantom', 'Vandal'],
      'Sniper Rifles': ['Marshal', 'Outlaw', 'Operator'],
      'Machine Guns': ['Ares', 'Odin'],
      'Melee': ['Knife'],
    };

    final List<String> rarities = [
      'Standard',
      'Select',
      'Deluxe',
      'Premium',
      'Exclusive',
    ];

    Color colorForRarity(String r) {
      switch (r) {
        case 'Select':
          return Colors.blue;
        case 'Deluxe':
          return Colors.cyan;
        case 'Premium':
          return Colors.orange;
        case 'Exclusive':
          return Colors.purple;
        default:
          return Colors.grey;
      }
    }

    Widget buildCategory(String title, List<String> weapons) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Dimens.s8),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: Dimens.s14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Weapons grid (multiple rows) for this category
          GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: Dimens.s8,
            crossAxisSpacing: Dimens.s8,
            childAspectRatio: 1.1,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: Dimens.s4),
            children: weapons.map((weapon) {
              return SkinCard(
                skinName: 'Default',
                weaponType: weapon,
                rarity: 'Standard',
                rarityColor: colorForRarity('Standard'),
                onTap: () {},
              );
            }).toList(),
          ),

          const SizedBox(height: Dimens.s8),

          // Split by skin categories (rarities) for the whole class
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.s4),
            child: Text(
              'Skin Categories',
              style: TextStyle(color: Colors.grey[300], fontSize: Dimens.s11),
            ),
          ),
          const SizedBox(height: Dimens.s8),
          SizedBox(
            height: 140,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: rarities.length,
              separatorBuilder: (_, __) => const SizedBox(width: Dimens.s12),
              padding: const EdgeInsets.symmetric(horizontal: Dimens.s4),
              itemBuilder: (context, idx) {
                final rarity = rarities[idx];
                return SizedBox(
                  width: 140,
                  child: SkinCard(
                    skinName: rarity,
                    weaponType: title,
                    rarity: rarity,
                    rarityColor: colorForRarity(rarity),
                    onTap: () {},
                  ),
                );
              },
            ),
          ),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: categories.entries
          .map((e) => Padding(
                padding: const EdgeInsets.only(bottom: Dimens.s8),
                child: buildCategory(e.key, e.value),
              ))
          .toList(),
    );
  }

  Widget _buildPlayerCardsGrid() {
    final cards = [
      ('NOIR Arctic', 'Sage'),
      ('Protocol 781-A', 'Cypher'),
      ('Reckoning', 'Phoenix'),
      ('Surge', 'Jett'),
      ('Sovereign', 'Reyna'),
    ];

    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          final (cardName, character) = cards[index];

          return Padding(
            padding: const EdgeInsets.only(right: Dimens.s12),
            child: SizedBox(
              width: 120,
              child: PlayerCardWidget(
                cardName: cardName,
                characterName: character,
                onTap: () {},
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTitlesGrid() {
    final titles = [
      ('Valorant Badge Holder', 1),
      ('Iron Ranked', 2),
      ('Bronze Ranked', 3),
      ('Silver Ranked', 4),
      ('Episode Winner', 5),
    ];

    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: titles.length,
        itemBuilder: (context, index) {
          final (title, number) = titles[index];

          return Padding(
            padding: const EdgeInsets.only(right: Dimens.s12),
            child: SizedBox(
              width: 130,
              child: TitleCard(
                titleText: title,
                titleNumber: number,
                onTap: () {},
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildSprayGrid() {
    final sprays = [
      ('Preround Spray #1', 'Preround'),
      ('Midround Spray #1', 'Midround'),
      ('Postround Spray #1', 'Postround'),
      ('Ace Spray', 'Postround'),
      ('Plant Spray', 'Midround'),
      ('Defuse Spray', 'Postround'),
      ('Freeze Spray', 'Preround'),
      ('Gamer Spray', 'Midround'),
      ('Radiant Spray', 'Postround'),
    ];

    return SizedBox(
      height: 180,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: Dimens.s12,
          crossAxisSpacing: Dimens.s12,
          childAspectRatio: 0.85,
        ),
        itemCount: sprays.length,
        padding: const EdgeInsets.symmetric(horizontal: Dimens.s4),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final (name, type) = sprays[index];

          return SprayItem(
            sprayName: name,
            sprayType: type,
            onTap: () {},
          );
        },
      ),
    );
  }
}
