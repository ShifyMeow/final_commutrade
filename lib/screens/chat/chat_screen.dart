import 'package:final_commutrade/widgets/chat_list_item.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  // Revised placeholder data to reflect the new multi-purpose chat
  final List<Map<String, dynamic>> _chatData = const [
    {
      'name': 'Official Announcements',
      'lastMessage': 'Warden: Please be advised of the upcoming...',
      'time': '11:30 AM',
      'hasUnread': true,
    },
    {
      'name': 'Cloud Computing Project Group',
      'lastMessage': 'Sarah: Don\'t forget the deadline is Friday!',
      'time': '10:55 AM',
      'hasUnread': true,
    },
    {
      'name': 'John Doe (Seller)',
      'lastMessage': 'Yes, the item is still available.',
      'time': '9:15 AM',
      'hasUnread': false,
    },
    {
      'name': 'Maria Garcia',
      'lastMessage': 'See you at the library later.',
      'time': 'Yesterday',
      'hasUnread': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
        elevation: 4.0,
        backgroundColor: Theme.of(context).cardColor,
      ),
      body: ListView.separated(
        itemCount: _chatData.length,
        itemBuilder: (context, index) {
          final chat = _chatData[index];
          return ChatListItem(
            name: chat['name'],
            lastMessage: chat['lastMessage'],
            time: chat['time'],
            hasUnreadMessages: chat['hasUnread'],
          );
        },
        separatorBuilder: (context, index) {
          // Adds a clean divider between list items
          return const Divider(
            height: 1,
            thickness: 1,
            indent: 80, // Aligns the divider with the start of the text
            endIndent: 16,
          );
        },
      ),
    );
  }
}