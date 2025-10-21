import 'package.final_commutrade/theme/app_theme_notifier.dart';
import 'package:final_commutrade/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Updated placeholder data to reflect selling in RM
  final List<Map<String, String>> _featuredItems = const [
    {
      'title': 'Vintage Leather Jacket',
      'price': 'RM 250.00',
      'author': 'user123',
    },
    {
      'title': 'Classic Acoustic Guitar',
      'price': 'RM 180.50',
      'author': 'musician_max',
    },
    {
      'title': 'Rare Comic Book Collection',
      'price': 'RM 95.00',
      'author': 'collector_carl',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<AppThemeNotifier>(context);
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
        elevation: 0,
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
                height: 260,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _featuredItems.length,
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  itemBuilder: (context, index) {
                    final item = _featuredItems[index];
                    return SizedBox(
                      width: 300,
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