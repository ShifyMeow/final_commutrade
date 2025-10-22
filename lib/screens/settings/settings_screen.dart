import 'package:final_commutrade/theme/app_theme_notifier.dart';
import 'package:final_commutrade/widgets/custom_dialog.dart';
import 'package:final_commutrade/widgets/settings_switch_tile.dart';
import 'package:flutter/material.dart'; // CORRECTED IMPORT
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return CustomDialog(
          title: 'Confirm Logout',
          content: 'Are you sure you want to log out?',
          confirmText: 'Logout',
          onConfirm: () {
            Navigator.of(dialogContext).pop();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<AppThemeNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          const ListTile(
            leading: Icon(Icons.person_outline),
            title: Text('Edit Profile'),
            subtitle: Text('Update your name and profile picture'),
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.lock_outline),
            title: Text('Change Password'),
            subtitle: Text('Update your account security'),
            onTap: null,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.notifications_outlined),
            title: const Text('Notifications'),
            subtitle: const Text('Manage push notifications'),
            onTap: () {},
          ),
          SettingsSwitchTile(
            icon: Icons.palette_outlined,
            title: 'Dark Mode',
            subtitle: 'Enable or disable the dark theme',
            value: themeNotifier.isDarkMode,
            onChanged: (newValue) {
              themeNotifier.toggleTheme();
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.logout, color: Theme.of(context).colorScheme.error),
            title: Text(
              'Logout',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
            onTap: () {
              _showLogoutDialog(context);
            },
          ),
        ],
      ),
    );
  }
}