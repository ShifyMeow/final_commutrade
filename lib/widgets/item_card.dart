import 'package.flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final String price;
  final String author;
  // We will use a placeholder for the image for now
  // final String imageUrl;

  const ItemCard({
    super.key,
    required this.title,
    required this.price,
    required this.author,
    // required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // Using properties from our theme for consistency
      elevation: 4.0,
      shadowColor: Theme.of(context).shadowColor.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      // Ensures the image inside respects the rounded corners
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // --- Image Placeholder ---
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor.withAlpha(100),
              child: const Icon(
                Icons.image_not_supported_outlined,
                size: 60,
                color: Colors.grey,
              ),
            ),
          ),
          // --- Item Details ---
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  'Posted by $author',
                  style: Theme.of(context).textTheme.bodySmall,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 10),
                Text(
                  price,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}