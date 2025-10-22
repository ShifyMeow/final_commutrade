import 'package:final_commutrade/widgets/item_card.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  // Generic placeholder data for the user's own items
  final List<Map<String, String>> _userItems = const [
    {
      'title': 'My Listed Item 1',
      'price': 'RM 75.00',
      'author': 'My Username',
    },
    {
      'title': 'My Listed Item 2',
      'price': 'RM 120.00',
      'author': 'My Username',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Placeholder for navigating to a settings page
            },
          ),
        ],
        elevation: 0,
        backgroundColor: theme.scaffoldBackgroundColor,
        foregroundColor: theme.colorScheme.onBackground,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- Profile Header ---
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    child: Icon(Icons.person, size: 40),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My Username',
                          style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'user.email@example.com',
                          style: textTheme.bodyMedium?.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // --- User Stats ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildStatColumn('Items Listed', '2'),
                  _buildStatColumn('Completed Sales', '5'),
                  _buildStatColumn('Reviews', '4'),
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Divider(thickness: 1),

            // --- User's Items Section ---
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "My Items for Sale",
                style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              // Important: We use these two properties when nesting a ListView
              // inside a SingleChildScrollView to prevent errors.
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _userItems.length,
              itemBuilder: (context, index) {
                final item = _userItems[index];
                return ItemCard(
                  title: item['title']!,
                  price: item['price']!,
                  author: item['author']!,
                );
              },
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  // Helper widget to build the stat columns to avoid repetitive code
  Widget _buildStatColumn(String label, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 15, color: Colors.grey),
        ),
      ],
    );
  }
}