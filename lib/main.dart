import 'package:final_commutrade/screens/auth/login_screen.dart'; // UPDATED import
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
          // *** THE CHANGE IS HERE ***
          // The app will now start on the LoginScreen.
          home: const LoginScreen(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}