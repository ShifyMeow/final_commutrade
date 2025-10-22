import 'package:final_commutrade/widgets/clearable_text_field.dart'; // NEW import
import 'package:flutter/material.dart';

class AddItemScreen extends StatelessWidget {
  const AddItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('List a New Item'),
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
              const ClearableTextField(
                labelText: 'Item Title',
                hintText: 'e.g., Classic Acoustic Guitar',
              ),
              const SizedBox(height: 16),

              // --- Description Field ---
              // The standard TextField is still best for multi-line descriptions
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: 'Description',
                  hintText: 'Include details about the item\'s condition, age, etc.',
                  // We don't need to define the border here anymore,
                  // as it's handled by the global InputDecorationTheme
                ),
              ),
              const SizedBox(height: 16),

              // --- Price Field ---
              const ClearableTextField(
                labelText: 'Price',
                // Note: prefixIcon and prefixText cannot be used together.
                // Our theme handles the styling, so we just set the keyboard type.
                keyboardType: TextInputType.numberWithOptions(decimal: true),
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