import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/presentation/screens/collection/widgets/loadout_section.dart';
import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
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

              // Skins Section
              Text(
                'Weapon Skins',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: Dimens.s12),
              const SizedBox(
                height: 200,
                child: LoadoutSection(
                  isSkinsSection: true,
                ),
              ),
              const SizedBox(height: Dimens.s32),

              // Player Cards Section
              Text(
                'Player Cards',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: Dimens.s12),
              const SizedBox(
                height: 150,
                child: LoadoutSection(
                  isPlayerCardSection: true,
                ),
              ),
              const SizedBox(height: Dimens.s32),

              // Titles Section
              Text(
                'Player Titles',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: Dimens.s12),
              const SizedBox(
                height: 120,
                child: LoadoutSection(
                  isTitleSection: true,
                ),
              ),
              const SizedBox(height: Dimens.s32),

              // Sprays Section
              Text(
                'Sprays',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: Dimens.s12),
              const SizedBox(
                height: 180,
                child: LoadoutSection(
                  isSpraySection: true,
                ),
              ),
              const SizedBox(height: Dimens.s32),
            ],
          ),
        ),
      ),
    );
  }
}
