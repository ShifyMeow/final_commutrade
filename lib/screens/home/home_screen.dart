import 'package:final_commutrade/theme/app_theme_notifier.dart';
import 'package:final_commutrade/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Placeholder data - in a real app, this would come from a database.
  final List<Map<String, String>> _dummyItems = const [
    {
      'title': 'Vintage Leather Jacket',
      'price': 'Trade for Watch',
      'author': 'user123',
    },
    {
      'title': 'Classic Acoustic Guitar',
      'price': 'Trade/Sell: \$150',
      'author': 'musician_max',
    },
    {
      'title': 'Set of 4 Nordic Chairs',
      'price': 'Trade for Bookshelf',
      'author': 'design_dreamer',
    },
    {
      'title': 'Rare Comic Book Collection',
      'price': 'Trade Only',
      'author': 'collector_carl',
    },
    {
      'title': 'Professional Camera Lens',
      'price': 'Trade/Sell: \$200',
      'author': 'photo_pro',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<AppThemeNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Placeholder for search functionality
            },
          ),
          IconButton(
            icon: Icon(
              themeNotifier.isDarkMode ? Icons.nightlight_round : Icons.wb_sunny,
            ),
            onPressed: () {
              themeNotifier.toggleTheme();
            },
          ),
        ],
        elevation: 4.0,
        backgroundColor: Theme.of(context).cardColor,
      ),
      body: ListView.builder(
        itemCount: _dummyItems.length,
        itemBuilder: (BuildContext context, int index) {
          final item = _dummyItems[index];
          return ItemCard(
            title: item['title']!,
            price: item['price']!,
            author: item['author']!,
          );
        },
      ),
    );
  }
}