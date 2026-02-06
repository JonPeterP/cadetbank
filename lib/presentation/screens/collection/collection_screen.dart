import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/presentation/screens/collection/cubits/collection/collection_cubit.dart';
import 'package:cadetbank/presentation/screens/collection/cubits/collection/collection_state.dart';
import 'package:cadetbank/presentation/screens/player_cards/player_card_display_screen.dart';
import 'package:cadetbank/presentation/screens/skins/skin_display_screen.dart';
import 'package:cadetbank/presentation/screens/sprays/spray_display_screen.dart';
import 'package:cadetbank/presentation/widgets/ziggy/ziggy_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CollectionScreen extends StatelessWidget {
  const CollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collection'),
        centerTitle: true,
        elevation: 0,
      ),
      body: BlocBuilder<CollectionCubit, CollectionState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: ZiggyLoader()),
            failed: (message) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(message),
                  const SizedBox(height: Dimens.s12),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<CollectionCubit>().loadCollection(),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
            loaded: (weapons, sprays, playerCards, selectedWeaponSkins,
                selectedPlayerCard, selectedSprays) {
              final displayCard = selectedPlayerCard ?? (playerCards.isNotEmpty ? playerCards[0] : null);
              return SingleChildScrollView(
                padding: const EdgeInsets.all(Dimens.s16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ================= Player Card =================
                    Text(
                      'Player Card',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: Dimens.s12),
                    if (displayCard != null)
                      GestureDetector(
                        onTap: () async {
                          final chosenCard = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => PlayerCardDisplayScreen(
                                playerCards: playerCards,
                              ),
                            ),
                          );
                          if (chosenCard != null) {
                            context
                                .read<CollectionCubit>()
                                .selectPlayerCard(chosenCard);
                          }
                        },
                        child: Container(
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.grey[850],
                            borderRadius: BorderRadius.circular(Dimens.s8),
                            border: Border.all(
                              color: selectedPlayerCard != null
                                  ? Colors.green
                                  : Colors.grey[700]!,
                              width: selectedPlayerCard != null ? 2 : 1,
                            ),
                            boxShadow: selectedPlayerCard != null
                                ? [
                                    BoxShadow(
                                      color: Colors.green.withOpacity(0.5),
                                      offset: const Offset(0, 2),
                                      blurRadius: 6,
                                    ),
                                  ]
                                : [],
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              if (displayCard.wideArt != null)
                                Expanded(
                                  child: Image.network(
                                    displayCard.wideArt!,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    errorBuilder: (_, __, ___) =>
                                        const Icon(Icons.broken_image,
                                            color: Colors.grey),
                                  ),
                                ),
                              Padding(
                                padding: const EdgeInsets.all(Dimens.s8),
                                child: Text(
                                  displayCard.displayName,
                                  style: const TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    const SizedBox(height: Dimens.s16),

                    // ================= Sprays (3 cards) =================
                    Text(
                      'Sprays',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: Dimens.s12),
                    GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: Dimens.s8,
                      crossAxisSpacing: Dimens.s8,
                      childAspectRatio: 1,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: List.generate(
                        3,
                        (index) {
                          final selectedSpray = selectedSprays[index];
                          final defaultSpray = index < sprays.length ? sprays[index] : null;
                          final displaySpray = selectedSpray ?? defaultSpray;

                          return GestureDetector(
                            onTap: () async {
                              final chosenSpray = await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => SprayDisplayScreen(
                                    sprays: sprays,
                                  ),
                                ),
                              );
                              if (chosenSpray != null) {
                                context
                                    .read<CollectionCubit>()
                                    .selectSpray(index, chosenSpray);
                              }
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              padding: const EdgeInsets.all(Dimens.s4),
                              decoration: BoxDecoration(
                                color: Colors.grey[850],
                                borderRadius: BorderRadius.circular(Dimens.s8),
                                border: Border.all(
                                  color: selectedSpray != null
                                      ? Colors.green
                                      : Colors.grey[700]!,
                                  width: selectedSpray != null ? 2 : 1,
                                ),
                                boxShadow: selectedSpray != null
                                    ? [
                                        BoxShadow(
                                          color: Colors.green.withOpacity(0.5),
                                          offset: const Offset(0, 2),
                                          blurRadius: 6,
                                        ),
                                      ]
                                    : [],
                              ),
                              child: displaySpray != null
                                  ? Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        if (displaySpray.displayIcon != null)
                                          Expanded(
                                            child: Image.network(
                                              displaySpray.displayIcon!,
                                              fit: BoxFit.contain,
                                              errorBuilder: (_, __, ___) =>
                                                  const Icon(Icons.broken_image,
                                                      color: Colors.grey),
                                            ),
                                          ),
                                        const SizedBox(height: Dimens.s4),
                                        Text(
                                          displaySpray.displayName,
                                          style: const TextStyle(fontSize: 10),
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    )
                                  : const Center(
                                      child: Icon(Icons.add, color: Colors.grey),
                                    ),
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: Dimens.s32),

                    // ================= Weapon Skins =================
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Weapon Skins (${weapons.length})',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        IconButton(
                          icon: const Icon(Icons.refresh, size: 20),
                          tooltip: 'Reset all skins',
                          onPressed: () {
                            context.read<CollectionCubit>().resetWeaponSkins();
                          },
                        ),
                      ],
                    ),

                    const SizedBox(height: Dimens.s12),

                    Builder(
                      builder: (context) {
                        final sidearms = <dynamic>[];
                        final smgs = <dynamic>[];
                        final shotguns = <dynamic>[];
                        final rifles = <dynamic>[];
                        final snipers = <dynamic>[];
                        final machineGuns = <dynamic>[];
                        final melees = <dynamic>[];

                        for (final w in weapons) {
                          final name = w.displayName.toLowerCase();
                          if (['classic','shorty','frenzy','ghost','bandit','sheriff'].contains(name)) {
                            sidearms.add(w);
                          } else if (['stinger','spectre'].contains(name)) {
                            smgs.add(w);
                          } else if (['bucky','judge'].contains(name)) {
                            shotguns.add(w);
                          } else if (['bulldog','guardian','phantom','vandal'].contains(name)) {
                            rifles.add(w);
                          } else if (['marshal','outlaw','operator'].contains(name)) {
                            snipers.add(w);
                          } else if (['ares','odin'].contains(name)) {
                            machineGuns.add(w);
                          } else if (['melee','knife'].contains(name)) {
                            melees.add(w);
                          } else {
                            rifles.add(w);
                          }
                        }

                        Widget buildCategory(String title, List<dynamic> list) {
                          if (list.isEmpty) return const SizedBox.shrink();

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(title,
                                  style: Theme.of(context).textTheme.titleMedium),
                              const SizedBox(height: Dimens.s8),
                              GridView.count(
                                crossAxisCount: 3,
                                mainAxisSpacing: Dimens.s8,
                                crossAxisSpacing: Dimens.s8,
                                childAspectRatio: 1,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                children: list.map((weapon) {
                                  final selectedSkin = selectedWeaponSkins[weapon.uuid];

                                  return GestureDetector(
                                    onTap: () async {
                                      final chosenSkin = await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) =>
                                              SkinDisplayScreen(weapon: weapon),
                                        ),
                                      );

                                      if (chosenSkin != null) {
                                        context.read<CollectionCubit>().selectWeaponSkin(
                                          weapon,
                                          chosenSkin,
                                        );
                                      }
                                    },
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 200),
                                      padding: const EdgeInsets.all(Dimens.s8),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[850],
                                        borderRadius:
                                        BorderRadius.circular(Dimens.s8),
                                        border: Border.all(
                                          color: selectedSkin != null
                                              ? Colors.green
                                              : Colors.grey[700]!,
                                          width: selectedSkin != null ? 2 : 1,
                                        ),
                                        boxShadow: selectedSkin != null
                                            ? [
                                          BoxShadow(
                                            color: Colors.green.withOpacity(0.5),
                                            offset: const Offset(0, 2),
                                            blurRadius: 6,
                                          ),
                                        ]
                                            : [],
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          if (weapon.displayIcon != null)
                                            Expanded(
                                              child: Image.network(
                                                selectedSkin?.displayIcon ??
                                                    weapon.displayIcon!,
                                                fit: BoxFit.contain,
                                                errorBuilder: (_, __, ___) =>
                                                const Icon(Icons.broken_image,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          const SizedBox(height: Dimens.s4),
                                          Text(
                                            selectedSkin?.displayName ??
                                                weapon.displayName,
                                            style: const TextStyle(fontSize: 11),
                                            textAlign: TextAlign.center,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                              const SizedBox(height: Dimens.s16),
                            ],
                          );
                        }

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildCategory('Sidearms', sidearms),
                            buildCategory('SMGs', smgs),
                            buildCategory('Shotguns', shotguns),
                            buildCategory('Rifles', rifles),
                            buildCategory('Sniper Rifles', snipers),
                            buildCategory('Machine Guns', machineGuns),
                            buildCategory('Melee', melees),
                          ],
                        );
                      },
                    ),

                    const SizedBox(height: Dimens.s32),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
