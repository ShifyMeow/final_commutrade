import 'package:final_commutrade/theme/app_theme_notifier.dart';
import 'package:final_commutrade/widgets/announcement_card.dart';
import 'package:final_commutrade/widgets/home_app_bar.dart'; // NEW import
import 'package:final_commutrade/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Generic placeholder data for the announcement
  final Map<String, String> _announcement = const {
    'title': 'Important Announcement',
    'content': 'This is a placeholder for an important announcement.',
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
      // *** THE CHANGE IS HERE ***
      // Replaced the old AppBar with our new custom HomeAppBar
      appBar: HomeAppBar(
        isDarkMode: themeNotifier.isDarkMode,
        onSearchPressed: () {},
        onThemeTogglePressed: () {
          themeNotifier.toggleTheme();
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- Announcement Section ---
              // The Welcome message is now in the AppBar, so this section
              // can be simplified or removed later if desired.
              const SizedBox(height: 8), // Added space from AppBar
              AnnouncementCard(
                title: _announcement['title']!,
                content: _announcement['content']!,
                author: _announcement['author']!,
              ),
              const SizedBox(height: 32),

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
                height: 280,
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