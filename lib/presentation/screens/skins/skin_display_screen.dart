import 'package:flutter/material.dart';
import 'package:cadetbank/core/res/values/dimens.dart';

class SkinDisplayScreen extends StatefulWidget {
  final dynamic weapon;

  const SkinDisplayScreen({
    super.key,
    required this.weapon,
  });

  @override
  State<SkinDisplayScreen> createState() => _SkinDisplayScreenState();
}

class _SkinDisplayScreenState extends State<SkinDisplayScreen> {
  dynamic selectedSkin;
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final skins = widget.weapon.skins ?? [];
    final filteredSkins = _searchQuery.trim().isEmpty
        ? skins
        : skins
            .where((s) => (s.displayName ?? '')
                .toString()
                .toLowerCase()
                .contains(_searchQuery.toLowerCase()))
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.weapon.displayName),
        centerTitle: true,
      ),

      // 👉 Stack allows frozen button
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(Dimens.s16),
            child: Column(
              children: [
                // Search field
                TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search skins',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: _searchQuery.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              _searchController.clear();
                              setState(() {
                                _searchQuery = '';
                              });
                            },
                          )
                        : null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(Dimens.s8),
                    ),
                    isDense: true,
                    contentPadding: const EdgeInsets.all(Dimens.s8),
                  ),
                  onChanged: (v) {
                    setState(() {
                      _searchQuery = v;
                    });
                  },
                ),
                const SizedBox(height: Dimens.s12),

                // Grid or no results
                Expanded(
                  child: filteredSkins.isEmpty
                      ? Center(
                          child: Text(
                            'No skins found',
                            style: TextStyle(color: Colors.grey[400]),
                          ),
                        )
                      : GridView.builder(
                          padding: const EdgeInsets.only(bottom: 90),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: Dimens.s12,
                            crossAxisSpacing: Dimens.s12,
                            childAspectRatio: 0.85,
                          ),
                          itemCount: filteredSkins.length,
                          itemBuilder: (context, index) {
                            final skin = filteredSkins[index];
                            final isSelected = selectedSkin == skin;

                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedSkin = skin;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                padding: const EdgeInsets.all(Dimens.s8),
                                decoration: BoxDecoration(
                                  color: Colors.grey[850],
                                  borderRadius:
                                      BorderRadius.circular(Dimens.s12),

                                  // ✅ Green border when selected
                                  border: Border.all(
                                    color: isSelected
                                        ? Colors.greenAccent
                                        : Colors.grey[700]!,
                                    width: isSelected ? 2 : 1,
                                  ),

                                  // ✅ Lift effect
                                  boxShadow: isSelected
                                      ? [
                                          BoxShadow(
                                            color: Colors.greenAccent
                                                .withOpacity(0.3),
                                            blurRadius: 10,
                                            offset: const Offset(0, 4),
                                          )
                                        ]
                                      : [],
                                ),
                                child: Column(
                                  children: [
                                    if (skin.displayIcon != null)
                                      Expanded(
                                        child: Image.network(
                                          skin.displayIcon!,
                                          fit: BoxFit.contain,
                                          errorBuilder: (_, __, ___) =>
                                              const Icon(Icons.broken_image,
                                                  color: Colors.grey),
                                        ),
                                      ),
                                    const SizedBox(height: Dimens.s6),

                                    // ✅ Flexible skin name
                                    Text(
                                      skin.displayName,
                                      style: const TextStyle(fontSize: 11),
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                ),
              ],
            ),
          ),

          // ✅ Frozen Select Button
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(Dimens.s16),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.9),
                border: const Border(
                  top: BorderSide(color: Colors.grey),
                ),
              ),
              child: SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: selectedSkin == null
                      ? null
                      : () {
                          Navigator.pop(context, selectedSkin);
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedSkin == null
                        ? Colors.grey
                        : Colors.greenAccent,
                    foregroundColor: Colors.black,
                  ),
                  child: const Text(
                    'Select Skin',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
