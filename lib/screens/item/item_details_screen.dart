import 'package.flutter/material.dart';

class ItemDetailsScreen extends StatelessWidget {
  // In a real app, we would pass an item ID or the full item object.
  // For this UI placeholder, we'll use generic data.
  const ItemDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      // Use a custom scroll view to allow the app bar to collapse
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            pinned: true, // The app bar will remain visible as a header
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Item Title Placeholder',
                style: TextStyle(fontSize: 16.0),
              ),
              background: Container(
                color: theme.cardColor,
                child: const Icon(
                  Icons.image_outlined,
                  size: 150,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          // The rest of the page content goes into a SliverList
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // --- Price and Seller Info ---
                      Text(
                        'RM 99.99',
                        style: textTheme.headlineMedium?.copyWith(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Posted by: Seller Name',
                        style: textTheme.titleMedium?.copyWith(color: Colors.grey),
                      ),
                      const SizedBox(height: 24),
                      const Divider(),
                      const SizedBox(height: 24),

                      // --- Description ---
                      Text(
                        'Description',
                        style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'This is a placeholder for the item description. It will provide more details about the product, its condition, and any other relevant information for potential buyers. The text can wrap to multiple lines.',
                        style: textTheme.bodyLarge?.copyWith(height: 1.5), // Increased line height for readability
                      ),
                      const SizedBox(height: 24),

                      // --- Seller Location (Example) ---
                      Row(
                        children: [
                          const Icon(Icons.location_on_outlined, color: Colors.grey),
                          const SizedBox(width: 8),
                          Text(
                            'Location: Placeholder City',
                            style: textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // --- Floating Action Button or Bottom Bar for Action ---
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: ElevatedButton.icon(
            icon: const Icon(Icons.chat_bubble_outline),
            label: const Text('Contact Seller'),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            onPressed: () {
              // Placeholder for chat functionality
            },
          ),
        ),
      ),
    );
  }
}