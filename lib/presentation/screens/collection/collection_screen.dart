import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/presentation/screens/collection/cubits/collection/collection_cubit.dart';
import 'package:cadetbank/presentation/screens/collection/cubits/collection/collection_state.dart';
import 'package:cadetbank/presentation/screens/skins/skin_display_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CollectionScreen extends StatefulWidget {
  const CollectionScreen({super.key});

  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  dynamic? _previewWeapon;
  bool _isPreviewing = false;

  void _showPreview(dynamic weapon) {
    setState(() {
      _previewWeapon = weapon;
      _isPreviewing = true;
    });
  }

  void _hidePreview() {
    setState(() {
      _isPreviewing = false;
      _previewWeapon = null;
    });
  }

  String _selectedSkinOrBase(dynamic weapon, Map<String, dynamic> selectedWeaponSkins) {
    final selectedSkin = selectedWeaponSkins[weapon.uuid];
    return selectedSkin?.displayIcon ?? weapon.displayIcon ?? '';
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Collection'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          BlocBuilder<CollectionCubit, CollectionState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox.shrink(),
                loading: () => const Center(child: CircularProgressIndicator()),
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
                loaded: (weapons, sprays, playerCards, selectedWeaponSkins) {
                  // Helper function to categorize weapons
                  List<dynamic> sidearms = [];
                  List<dynamic> smgs = [];
                  List<dynamic> shotguns = [];
                  List<dynamic> rifles = [];
                  List<dynamic> snipers = [];
                  List<dynamic> machineGuns = [];
                  List<dynamic> melees = [];

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

                  // Build weapon category grid
                  Widget buildCategory(String title, List<dynamic> list) {
                    if (list.isEmpty) return const SizedBox.shrink();

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: Theme.of(context).textTheme.titleMedium),
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
                              onLongPress: () => _showPreview(weapon),
                              onLongPressEnd: (_) => _hidePreview(),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                padding: const EdgeInsets.all(Dimens.s8),
                                decoration: BoxDecoration(
                                  color: Colors.grey[850],
                                  borderRadius: BorderRadius.circular(Dimens.s8),
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
                                          _selectedSkinOrBase(weapon, selectedWeaponSkins),
                                          fit: BoxFit.contain,
                                          errorBuilder: (_, __, ___) =>
                                          const Icon(Icons.broken_image,
                                              color: Colors.grey),
                                        ),
                                      ),
                                    const SizedBox(height: Dimens.s4),
                                    Text(
                                      selectedSkin?.displayName ?? weapon.displayName,
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

                  return SingleChildScrollView(
                    padding: const EdgeInsets.all(Dimens.s16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Player Cards
                        Text('Player Card (${playerCards.length})',
                            style: Theme.of(context).textTheme.headlineSmall),
                        const SizedBox(height: Dimens.s12),
                        if (playerCards.isNotEmpty)
                          Container(
                            height: 180,
                            decoration: BoxDecoration(
                              color: Colors.grey[850],
                              borderRadius: BorderRadius.circular(Dimens.s8),
                              border: Border.all(color: Colors.grey[700]!, width: 1),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Column(
                              children: [
                                if (playerCards[0].wideArt != null)
                                  Expanded(
                                    child: Image.network(
                                      playerCards[0].wideArt!,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      errorBuilder: (_, __, ___) =>
                                      const Icon(Icons.broken_image, color: Colors.grey),
                                    ),
                                  ),
                                Padding(
                                  padding: const EdgeInsets.all(Dimens.s8),
                                  child: Text(
                                    playerCards[0].displayName,
                                    style: const TextStyle(fontSize: 12),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),

                        const SizedBox(height: Dimens.s16),

                        // Sprays
                        Text('Sprays (${sprays.length})',
                            style: Theme.of(context).textTheme.headlineSmall),
                        const SizedBox(height: Dimens.s12),
                        GridView.count(
                          crossAxisCount: 3,
                          mainAxisSpacing: Dimens.s8,
                          crossAxisSpacing: Dimens.s8,
                          childAspectRatio: 1,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: List.generate(
                            sprays.length >= 3 ? 3 : sprays.length,
                                (index) {
                              final spray = sprays[index];
                              return Container(
                                padding: const EdgeInsets.all(Dimens.s4),
                                decoration: BoxDecoration(
                                  color: Colors.grey[850],
                                  borderRadius: BorderRadius.circular(Dimens.s8),
                                  border: Border.all(color: Colors.grey[700]!, width: 1),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (spray.displayIcon != null)
                                      Expanded(
                                        child: Image.network(
                                          spray.displayIcon!,
                                          fit: BoxFit.contain,
                                          errorBuilder: (_, __, ___) =>
                                          const Icon(Icons.broken_image, color: Colors.grey),
                                        ),
                                      ),
                                    const SizedBox(height: Dimens.s4),
                                    Text(
                                      spray.displayName,
                                      style: const TextStyle(fontSize: 10),
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),

                        const SizedBox(height: Dimens.s32),

                        // Weapon Skins Header + Reset
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Weapon Skins (${weapons.length})',
                                style: Theme.of(context).textTheme.headlineSmall),
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

                        // Weapon Categories
                        buildCategory('Sidearms', sidearms),
                        buildCategory('SMGs', smgs),
                        buildCategory('Shotguns', shotguns),
                        buildCategory('Rifles', rifles),
                        buildCategory('Sniper Rifles', snipers),
                        buildCategory('Machine Guns', machineGuns),
                        buildCategory('Melee', melees),

                        const SizedBox(height: Dimens.s32),
                      ],
                    ),
                  );
                },
              );
            },
          ),

          // ================= Preview Overlay =================
          if (_isPreviewing && _previewWeapon != null)
            GestureDetector(
              onTap: _hidePreview,
              child: AnimatedOpacity(
                opacity: _isPreviewing ? 1 : 0,
                duration: const Duration(milliseconds: 200),
                child: Container(
                  color: Colors.black54,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.5,
                    padding: const EdgeInsets.all(Dimens.s12),
                    decoration: BoxDecoration(
                      color: Colors.grey[850],
                      borderRadius: BorderRadius.circular(Dimens.s8),
                      border: Border.all(color: Colors.grey[700]!, width: 1),
                    ),
                    child: BlocBuilder<CollectionCubit, CollectionState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          loaded: (_, __, ___, selectedWeaponSkins) {
                            return Image.network(
                              _selectedSkinOrBase(_previewWeapon, selectedWeaponSkins),
                              fit: BoxFit.contain,
                              errorBuilder: (_, __, ___) =>
                              const Icon(Icons.broken_image, color: Colors.grey),
                            );
                          },
                          orElse: () => const SizedBox.shrink(),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
