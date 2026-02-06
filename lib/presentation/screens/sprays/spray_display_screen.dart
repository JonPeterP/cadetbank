import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/data/models/response/spray_response.dart';
import 'package:flutter/material.dart';

class SprayDisplayScreen extends StatefulWidget {
  final List<SprayResponse> sprays;

  const SprayDisplayScreen({
    super.key,
    required this.sprays,
  });

  @override
  State<SprayDisplayScreen> createState() => _SprayDisplayScreenState();
}

class _SprayDisplayScreenState extends State<SprayDisplayScreen> {
  SprayResponse? selectedSpray;
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final filteredSprays = _searchQuery.trim().isEmpty
        ? widget.sprays
        : widget.sprays
            .where((s) => s.displayName
                .toLowerCase()
                .contains(_searchQuery.toLowerCase()))
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Spray'),
        centerTitle: true,
      ),
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
                    hintText: 'Search sprays',
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
                  child: filteredSprays.isEmpty
                      ? Center(
                          child: Text(
                            'No sprays found',
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
                          itemCount: filteredSprays.length,
                          itemBuilder: (context, index) {
                            final spray = filteredSprays[index];
                            final isSelected = selectedSpray == spray;

                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedSpray = spray;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                padding: const EdgeInsets.all(Dimens.s8),
                                decoration: BoxDecoration(
                                  color: Colors.grey[850],
                                  borderRadius:
                                      BorderRadius.circular(Dimens.s12),
                                  border: Border.all(
                                    color: isSelected
                                        ? Colors.greenAccent
                                        : Colors.grey[700]!,
                                    width: isSelected ? 2 : 1,
                                  ),
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
                                    const SizedBox(height: Dimens.s6),
                                    Text(
                                      spray.displayName,
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

          // Select Button
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
                  onPressed: selectedSpray == null
                      ? null
                      : () {
                          Navigator.pop(context, selectedSpray);
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedSpray == null
                        ? Colors.grey
                        : Colors.greenAccent,
                    foregroundColor: Colors.black,
                  ),
                  child: const Text(
                    'Select Spray',
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
