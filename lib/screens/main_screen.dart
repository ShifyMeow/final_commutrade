import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // Placeholder pages for the navigation tabs
  // We will replace these with the actual screen widgets later.
  static const List<Widget> _widgetOptions = <Widget>[
    PlaceholderScreen(text: 'Home Page'),
    PlaceholderScreen(text: 'Marketplace Page'),
    PlaceholderScreen(text: 'Chat Page'),
    PlaceholderScreen(text: 'Profile Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store_outlined),
            activeIcon: Icon(Icons.store),
            label: 'Marketplace',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            activeIcon: Icon(Icons.chat_bubble),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        // These properties are essential for the modern, clean look.
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        backgroundColor: Theme.of(context).cardColor,
        elevation: 8.0,
      ),
    );
  }
}

// Simple placeholder widget to display in the body.
class PlaceholderScreen extends StatelessWidget {
  final String text;
  const PlaceholderScreen({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}