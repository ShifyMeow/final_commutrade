import 'package:final_commutrade/theme/app_theme_notifier.dart';
import 'package:final_commutrade/widgets/announcement_card.dart';
import 'package:final_commutrade/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Generic placeholder data for the announcement
  final Map<String, String> _announcement = const {
    'title': 'Important Announcement',
    'content': 'This is a placeholder for an important announcement from a lecturer or warden.',
    'author': 'Admin',
  };

  // Generic placeholder data for featured items
  final List<Map<String, String>> _featuredItems = const [
    {
      'title': 'Featured Item 1',
      'price': 'RM 110.00',
      'author': 'Seller A',
    },
    {
      'title': 'Featured Item 2',
      'price': 'RM 85.50',
      'author': 'Seller B',
    },
    {
      'title': 'Featured Item 3',
      'price': 'RM 499.00',
      'author': 'Seller C',
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
              const SizedBox(height: 24),

              // --- Announcement Section ---
              AnnouncementCard(
                title: _announcement['title']!,
                content: _announcement['content']!,
                author: _announcement['author']!,
              ),
              const SizedBox(height: 32), // More space after the announcement

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
                height: 280, // Height is now corrected to 280
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _featuredItems.length,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  itemBuilder: (context, index) {
                    final item = _featuredItems[index];
                    return SizedBox(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ItemCard(
                          title: item['title']!,
                          price: item['price']!,
                          author: item['author']!,
                        ),
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