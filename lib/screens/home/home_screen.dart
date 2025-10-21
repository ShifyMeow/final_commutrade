import 'package:final_commutrade/theme/app_theme_notifier.dart';
import 'package:final_commutrade/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Placeholder data for the featured items
  final List<Map<String, String>> _featuredItems = const [
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
      'title': 'Rare Comic Book Collection',
      'price': 'Trade Only',
      'author': 'collector_carl',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<AppThemNotifier>(context);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('CommuTrade'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
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
        elevation: 0, // A flatter look for the dashboard AppBar
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Theme.of(context).colorScheme.onBackground,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- Welcome Header ---
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Welcome Back!',
                  style: textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Here are some new items you might like.',
                  style: textTheme.titleMedium?.copyWith(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 24),

              // --- Featured Items Section ---
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Featured Items',
                  style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 260, // Set a fixed height for the horizontal list
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _featuredItems.length,
                  // Add padding to the list for better spacing
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  itemBuilder: (context, index) {
                    final item = _featuredItems[index];
                    return SizedBox(
                      width: 300, // Constrain the width of the card in the horizontal list
                      child: ItemCard(
                        title: item['title']!,
                        price: item['price']!,
                        author: item['author']!,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}