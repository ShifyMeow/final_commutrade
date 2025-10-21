import 'package:final_commutrade/widgets/chat_list_item.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  // Revised placeholder data with 100% generic content
  final List<Map<String, dynamic>> _chatData = const [
    {
      'name': 'Announcement Channel',
      'lastMessage': 'This is the latest announcement...',
      'time': '11:30 AM',
      'hasUnread': true,
    },
    {
      'name': 'Group Chat Name',
      'lastMessage': 'User Name: This is a group message.',
      'time': '10:55 AM',
      'hasUnread': true,
    },
    {
      'name': 'Seller Name',
      'lastMessage': 'This is a message about an item.',
      'time': '9:15 AM',
      'hasUnread': false,
    },
    {
      'name': 'User Name',
      'lastMessage': 'This is the last message received.',
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