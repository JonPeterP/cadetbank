import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/presentation/screens/collection/cubits/collection/collection_cubit.dart';
import 'package:cadetbank/presentation/screens/collection/cubits/collection/collection_state.dart';
import 'package:cadetbank/presentation/screens/collection/widgets/loadout_section.dart';
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
            loaded: (weapons, sprays, playerCards) => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(Dimens.s16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Active Loadout Section
                    Text(
                      'Active Loadout',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: Dimens.s12),
                    const LoadoutSection(),
                    const SizedBox(height: Dimens.s32),

                    // Weapon Skins Section
                    Text(
                      'Weapon Skins (${weapons.length})',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: Dimens.s12),
                    SizedBox(
                      height: 120,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: weapons.length,
                        separatorBuilder: (_, __) =>
                            const SizedBox(width: Dimens.s8),
                        itemBuilder: (context, index) {
                          final weapon = weapons[index];
                          return Container(
                            width: 140,
                            padding: const EdgeInsets.all(Dimens.s8),
                            decoration: BoxDecoration(
                              color: Colors.grey[850],
                              borderRadius:
                                  BorderRadius.circular(Dimens.s8),
                              border: Border.all(
                                  color: Colors.grey[700]!, width: 1),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                if (weapon.displayIcon != null)
                                  Expanded(
                                    child: Image.network(
                                      weapon.displayIcon!,
                                      fit: BoxFit.contain,
                                      errorBuilder: (_, __, ___) =>
                                          const Icon(Icons.broken_image,
                                              color: Colors.grey),
                                    ),
                                  ),
                                const SizedBox(height: Dimens.s4),
                                Text(
                                  weapon.displayName,
                                  style: const TextStyle(fontSize: 11),
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: Dimens.s32),

                    // Player Cards Section
                    Text(
                      'Player Cards (${playerCards.length})',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: Dimens.s12),
                    SizedBox(
                      height: 150,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: playerCards.length,
                        separatorBuilder: (_, __) =>
                            const SizedBox(width: Dimens.s8),
                        itemBuilder: (context, index) {
                          final card = playerCards[index];
                          return Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey[850],
                              borderRadius:
                                  BorderRadius.circular(Dimens.s8),
                              border: Border.all(
                                  color: Colors.grey[700]!, width: 1),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Column(
                              children: [
                                if (card.smallArt != null)
                                  Expanded(
                                    child: Image.network(
                                      card.smallArt!,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      errorBuilder: (_, __, ___) =>
                                          const Icon(Icons.broken_image,
                                              color: Colors.grey),
                                    ),
                                  ),
                                Padding(
                                  padding:
                                      const EdgeInsets.all(Dimens.s4),
                                  child: Text(
                                    card.displayName,
                                    style: const TextStyle(fontSize: 10),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: Dimens.s32),

                    // Sprays Section
                    Text(
                      'Sprays (${sprays.length})',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: Dimens.s12),
                    SizedBox(
                      height: 120,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: sprays.length,
                        separatorBuilder: (_, __) =>
                            const SizedBox(width: Dimens.s8),
                        itemBuilder: (context, index) {
                          final spray = sprays[index];
                          return Container(
                            width: 100,
                            padding: const EdgeInsets.all(Dimens.s4),
                            decoration: BoxDecoration(
                              color: Colors.grey[850],
                              borderRadius:
                                  BorderRadius.circular(Dimens.s8),
                              border: Border.all(
                                  color: Colors.grey[700]!, width: 1),
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
                                          const Icon(Icons.broken_image,
                                              color: Colors.grey),
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
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
