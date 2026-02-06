import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/data/models/response/player_card_response.dart';
import 'package:flutter/material.dart';

class PlayerCardDisplayScreen extends StatefulWidget {
  final List<PlayerCardResponse> playerCards;

  const PlayerCardDisplayScreen({
    super.key,
    required this.playerCards,
  });

  @override
  State<PlayerCardDisplayScreen> createState() =>
      _PlayerCardDisplayScreenState();
}

class _PlayerCardDisplayScreenState extends State<PlayerCardDisplayScreen> {
  PlayerCardResponse? selectedCard;
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final filteredCards = _searchQuery.trim().isEmpty
        ? widget.playerCards
        : widget.playerCards
            .where((c) => c.displayName
                .toLowerCase()
                .contains(_searchQuery.toLowerCase()))
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Player Card'),
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
                    hintText: 'Search player cards',
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
                  child: filteredCards.isEmpty
                      ? Center(
                          child: Text(
                            'No player cards found',
                            style: TextStyle(color: Colors.grey[400]),
                          ),
                        )
                      : GridView.builder(
                          padding: const EdgeInsets.only(bottom: 90),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: Dimens.s12,
                            crossAxisSpacing: Dimens.s12,
                            childAspectRatio: 0.65,
                          ),
                          itemCount: filteredCards.length,
                          itemBuilder: (context, index) {
                            final card = filteredCards[index];
                            final isSelected = selectedCard == card;

                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCard = card;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
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
                                clipBehavior: Clip.antiAlias,
                                child: Column(
                                  children: [
                                    if (card.largeArt != null)
                                      Expanded(
                                        child: Image.network(
                                          card.largeArt!,
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                          errorBuilder: (_, __, ___) =>
                                              const Icon(Icons.broken_image,
                                                  color: Colors.grey),
                                        ),
                                      ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.all(Dimens.s8),
                                      child: Text(
                                        card.displayName,
                                        style: const TextStyle(fontSize: 12),
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
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
                  onPressed: selectedCard == null
                      ? null
                      : () {
                          Navigator.pop(context, selectedCard);
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedCard == null
                        ? Colors.grey
                        : Colors.greenAccent,
                    foregroundColor: Colors.black,
                  ),
                  child: const Text(
                    'Select Player Card',
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
