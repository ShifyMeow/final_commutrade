import 'package:flutter/material.dart';

class AddItemScreen extends StatelessWidget {
  const AddItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('List a New Item'),
        // A "Post" button in the AppBar is a common pattern for forms
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextButton(
              onPressed: () {
                // Placeholder for post logic
              },
              child: const Text('POST'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // --- Image Upload Section ---
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: theme.scaffoldBackgroundColor.withAlpha(150),
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Colors.grey.shade400, width: 1.5),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_a_photo_outlined, size: 60, color: Colors.grey),
                    SizedBox(height: 16),
                    Text('Tap to upload images', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // --- Item Title Field ---
              TextField(
                decoration: InputDecoration(
                  labelText: 'Item Title',
                  hintText: 'e.g., Classic Acoustic Guitar',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // --- Description Field ---
              TextField(
                maxLines: 5, // Allows for a multi-line description
                decoration: InputDecoration(
                  labelText: 'Description',
                  hintText: 'Include details about the item\'s condition, age, etc.',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // --- Price Field ---
              TextField(
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Price',
                  prefixText: 'RM ', // Shows RM inside the field
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              const SizedBox(height: 32),

              // --- Post Button ---
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                onPressed: () {
                  // Placeholder for post logic
                },
                child: const Text(
                  'List My Item',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}