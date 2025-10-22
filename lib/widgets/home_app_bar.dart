import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onSearchPressed;
  final VoidCallback onThemeTogglePressed;
  final bool isDarkMode;

  const HomeAppBar({
    super.key,
    required this.onSearchPressed,
    required this.onThemeTogglePressed,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.primary.withOpacity(0.7),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(24),
        ),
      ),
      child: AppBar(
        // We make the AppBar transparent to let the Container's gradient show through.
        backgroundColor: Colors.transparent,
        elevation: 0,
        // Using `titleSpacing` to better control the layout.
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome Back!',
                style: theme.textTheme.titleMedium?.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontWeight: FontWeight.w300, // Lighter font weight
                ),
              ),
              Text(
                'My Username', // Placeholder for user's name
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: theme.colorScheme.onPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: onSearchPressed,
            color: theme.colorScheme.onPrimary,
          ),
          IconButton(
            icon: Icon(isDarkMode ? Icons.nightlight_round : Icons.wb_sunny),
            onPressed: onThemeTogglePressed,
            color: theme.colorScheme.onPrimary,
          ),
        ],
      ),
    );
  }

  @override
  // This is required for custom AppBars. We define its preferred height.
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}