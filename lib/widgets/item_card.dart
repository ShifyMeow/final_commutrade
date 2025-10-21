import 'package:flutter/material.dart';

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
    // This Card cannot be 'const' because it depends on 'Theme.of(context)',
    // which is determined when the app is running, not when it's compiling.
    return Card(
      elevation: 4.0,
      shadowColor: Theme.of(context).shadowColor.withOpacity(0.1),
      shape: RoundedRectangleBorder(
        // This 'borderRadius' can be constant.
        borderRadius: BorderRadius.circular(12.0),
      ),
      clipBehavior: Clip.antiAlias,
      // This 'margin' can be constant.
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            // This Container cannot be 'const' because its color depends on the theme.
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor.withAlpha(100),
              // This Icon can be constant.
              child: const Icon(
                Icons.image_not_supported_outlined,
                size: 60,
                color: Colors.grey,
              ),
            ),
          ),
          // This Padding can be constant.
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // This Text cannot be 'const' because 'title' is a variable
                // and its style depends on the theme.
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                // This SizedBox can be constant.
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