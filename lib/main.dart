import 'package:final_commutrade/theme/app_theme.dart';
import 'package:final_commutrade/theme/app_theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppThemeNotifier(),
      child: const CommuTradeApp(),
    ),
  );
}

class CommuTradeApp extends StatelessWidget {
  const CommuTradeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppThemeNotifier>(
      builder: (context, themeNotifier, child) {
        return MaterialApp(
          title: 'CommuTrade',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeNotifier.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          home: const PlaceholderHomePage(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

// Placeholder widget for the home page.
// This will be replaced later with the actual app navigation.
class PlaceholderHomePage extends StatelessWidget {
  const PlaceholderHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Accessing the theme notifier to toggle the theme
    final themeNotifier = Provider.of<AppThemeNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CommuTrade'),
        actions: [
          IconButton(
            icon: Icon(
              themeNotifier.isDarkMode ? Icons.nightlight_round : Icons.wb_sunny,
            ),
            onPressed: () {
              themeNotifier.toggleTheme();
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Welcome to CommuTrade!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}