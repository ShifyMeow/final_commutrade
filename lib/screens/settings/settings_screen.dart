import 'package:final_commutrade/widgets/custom_dialog.dart'; // NEW import
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  // Helper function to show the dialog
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return CustomDialog(
          title: 'Confirm Logout',
          content: 'Are you sure you want to log out?',
          confirmText: 'Logout',
          onConfirm: () {
            // Placeholder for actual logout logic
            // For now, it will just close the dialog
            Navigator.of(dialogContext).pop();
            // In a real app, you'd navigate back to the LoginScreen after this
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          // --- Account Section ---
          const ListTile(
            leading: Icon(Icons.person_outline),
            title: Text('Edit Profile'),
            subtitle: Text('Update your name and profile picture'),
            onTap: null, // Placeholder - onTap is disabled for now
          ),
          const ListTile(
            leading: Icon(Icons.lock_outline),
            title: Text('Change Password'),
            subtitle: Text('Update your account security'),
            onTap: null,
          ),

          // --- App Settings Section ---
          const Divider(),
          ListTile(
            leading: const Icon(Icons.notifications_outlined),
            title: const Text('Notifications'),
            subtitle: const Text('Manage push notifications'),
            onTap: () {}, // Placeholder
          ),
          ListTile(
            leading: const Icon(Icons.palette_outlined),
            title: const Text('Appearance'),
            subtitle: const Text('Switch between light and dark mode'),
            onTap: () {},
          ),

          // --- Actions Section ---
          const Divider(),
          ListTile(
            leading: Icon(Icons.logout, color: Theme.of(context).colorScheme.error),
            title: Text(
              'Logout',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
            onTap: () {
              // *** THE CHANGE IS HERE ***
              // Call the helper function to show the dialog
              _showLogoutDialog(context);
            },
          ),
        ],
      ),
    );
  }
}