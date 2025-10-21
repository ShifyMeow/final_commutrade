import 'package:final_commutrade/widgets/item_card.dart';
import 'package:flutter/material.dart';

class MarketplaceScreen extends StatelessWidget {
  const MarketplaceScreen({super.key});

  // A larger list of placeholder data for the marketplace
  final List<Map<String, String>> _marketplaceItems = const [
    {
      'title': 'Set of 4 Nordic Chairs',
      'price': 'RM 450.00',
      'author': 'design_dreamer',
    },
    {
      'title': 'Professional Camera Lens',
      'price': 'RM 800.00',
      'author': 'photo_pro',
    },
    {
      'title': 'Vintage Leather Jacket',
      'price': 'RM 250.00',
      'author': 'user123',
    },
    {
      'title': 'Mountain Bike - Like New',
      'price': 'RM 1200.00',
      'author': 'adventure_ali',
    },
    {
      'title': 'Classic Acoustic Guitar',
      'price': 'RM 180.50',
      'author': 'musician_max',
    },
    {
      'title': 'Gaming Monitor 27"',
      'price': 'RM 650.00',
      'author': 'gamer_z',
    },
    {
      'title': 'Rare Comic Book Collection',
      'price': 'RM 95.00',
      'author': 'collector_carl',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketplace'),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
              // Placeholder for filter/sort functionality
            },
          ),
        ],
        elevation: 4.0,
        backgroundColor: Theme.of(context).cardColor,
      ),
      body: ListView.builder(
        // Add some padding to the top and bottom of the list
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        itemCount: _marketplaceItems.length,
        itemBuilder: (BuildContext context, int index) {
          final item = _marketplaceItems[index];
          return ItemCard(
            title: item['title']!,
            price: item['price']!,
            author: item['author']!,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Placeholder for adding a new item
        },
        tooltip: 'Post a new item',
        child: const Icon(Icons.add),
      ),
    );
  }
}