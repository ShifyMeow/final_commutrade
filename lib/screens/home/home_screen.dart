import 'package:final_commutrade/theme/app_theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<AppThemeNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Placeholder for search functionality
            },
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
        // Adding a subtle shadow to the AppBar
        elevation: 4.0,
        backgroundColor: Theme.of(context).cardColor,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.home_work_outlined,
                size: 80,
                color: Colors.grey,
              ),
              SizedBox(height: 20),
              Text(
                'Welcome to CommuTrade!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'This is the home feed. Featured items and updates will appear here.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}