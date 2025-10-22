import 'package:final_commutrade/screens/item/add_item_screen.dart';
import 'package:final_commutrade/widgets/item_card.dart';
import 'package:flutter/material.dart';

class MarketplaceScreen extends StatelessWidget {
  const MarketplaceScreen({super.key});

  // Using generic placeholder data
  final List<Map<String, String>> _marketplaceItems = const [
    {
      'title': 'Item Title 1',
      'price': 'RM 25.00',
      'author': 'Seller Name 1',
    },
    {
      'title': 'Product Name 2',
      'price': 'RM 150.50',
      'author': 'Seller Name 2',
    },
    {
      'title': 'Placeholder Item 3',
      'price': 'RM 99.99',
      'author': 'Seller Name 3',
    },
    {
      'title': 'Generic Item 4',
      'price': 'RM 12.00',
      'author': 'Seller Name 4',
    },
    {
      'title': 'Sample Product 5',
      'price': 'RM 300.00',
      'author': 'Seller Name 5',
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
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        itemCount: _marketplaceItems.length,
        itemBuilder: (BuildContext context, int index) {
          final item = _marketplaceItems[index];
          return Padding(
            // Added horizontal padding here to ensure consistent spacing
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ItemCard(
              title: item['title']!,
              price: item['price']!,
              author: item['author']!,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // *** THE CHANGE IS HERE ***
          // Navigate to the AddItemScreen
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddItemScreen(),
            ),
          );
        },
        tooltip: 'Post a new item',
        child: const Icon(Icons.add),
      ),
    );
  }
}