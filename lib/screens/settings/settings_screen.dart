import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
            // We can connect our theme toggler here later
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
              // Placeholder for logout logic
            },
          ),
        ],
      ),
    );
  }
}