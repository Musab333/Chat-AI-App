import 'package:flutter/material.dart';
import '../../models/chat_list_item_model.dart';
import '../chat_detail/chat_detail_screen.dart';

class ChatListScreen extends StatelessWidget {
  final String categoryTitle;

  const ChatListScreen({super.key, required this.categoryTitle});

  List<ChatListItemModel> _getAgentsForCategory() {
    return [
      ChatListItemModel(
        name: 'Antony',
        avatarUrl:
            'https://robohash.org/Antony.png?set=set2&size=150x150', // Monster looking avatars
        lastMessage: "i'll see you soon...",
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Berserk',
        avatarUrl: 'https://robohash.org/Berserk.png?set=set2&size=150x150',
        lastMessage: 'Man on mission..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Headman',
        avatarUrl: 'https://robohash.org/Headman.png?set=set2&size=150x150',
        lastMessage: 'sure!',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'NLAC Group',
        avatarUrl: 'https://robohash.org/NLAC.png?set=set2&size=150x150',
        lastMessage: 'Great! be on time..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Anime fam',
        avatarUrl: 'https://robohash.org/Anime.png?set=set2&size=150x150',
        lastMessage: 'Great! be on time..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Monster',
        avatarUrl: 'https://robohash.org/Monster.png?set=set2&size=150x150',
        lastMessage: 'Great! be on time..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Antony',
        avatarUrl:
            'https://robohash.org/Antony.png?set=set2&size=150x150', // Monster looking avatars
        lastMessage: "i'll see you soon...",
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Berserk',
        avatarUrl: 'https://robohash.org/Berserk.png?set=set2&size=150x150',
        lastMessage: 'Man on mission..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Headman',
        avatarUrl: 'https://robohash.org/Headman.png?set=set2&size=150x150',
        lastMessage: 'sure!',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'NLAC Group',
        avatarUrl: 'https://robohash.org/NLAC.png?set=set2&size=150x150',
        lastMessage: 'Great! be on time..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Anime fam',
        avatarUrl: 'https://robohash.org/Anime.png?set=set2&size=150x150',
        lastMessage: 'Great! be on time..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Monster',
        avatarUrl: 'https://robohash.org/Monster.png?set=set2&size=150x150',
        lastMessage: 'Great! be on time..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Antony',
        avatarUrl:
            'https://robohash.org/Antony.png?set=set2&size=150x150', // Monster looking avatars
        lastMessage: "i'll see you soon...",
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Berserk',
        avatarUrl: 'https://robohash.org/Berserk.png?set=set2&size=150x150',
        lastMessage: 'Man on mission..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Headman',
        avatarUrl: 'https://robohash.org/Headman.png?set=set2&size=150x150',
        lastMessage: 'sure!',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'NLAC Group',
        avatarUrl: 'https://robohash.org/NLAC.png?set=set2&size=150x150',
        lastMessage: 'Great! be on time..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Anime fam',
        avatarUrl: 'https://robohash.org/Anime.png?set=set2&size=150x150',
        lastMessage: 'Great! be on time..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Monster',
        avatarUrl: 'https://robohash.org/Monster.png?set=set2&size=150x150',
        lastMessage: 'Great! be on time..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Headman',
        avatarUrl: 'https://robohash.org/Headman.png?set=set2&size=150x150',
        lastMessage: 'sure!',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'NLAC Group',
        avatarUrl: 'https://robohash.org/NLAC.png?set=set2&size=150x150',
        lastMessage: 'Great! be on time..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Anime fam',
        avatarUrl: 'https://robohash.org/Anime.png?set=set2&size=150x150',
        lastMessage: 'Great! be on time..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Monster',
        avatarUrl: 'https://robohash.org/Monster.png?set=set2&size=150x150',
        lastMessage: 'Great! be on time..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Antony',
        avatarUrl:
            'https://robohash.org/Antony.png?set=set2&size=150x150', // Monster looking avatars
        lastMessage: "i'll see you soon...",
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Berserk',
        avatarUrl: 'https://robohash.org/Berserk.png?set=set2&size=150x150',
        lastMessage: 'Man on mission..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Headman',
        avatarUrl: 'https://robohash.org/Headman.png?set=set2&size=150x150',
        lastMessage: 'sure!',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'NLAC Group',
        avatarUrl: 'https://robohash.org/NLAC.png?set=set2&size=150x150',
        lastMessage: 'Great! be on time..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Anime fam',
        avatarUrl: 'https://robohash.org/Anime.png?set=set2&size=150x150',
        lastMessage: 'Great! be on time..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Monster',
        avatarUrl: 'https://robohash.org/Monster.png?set=set2&size=150x150',
        lastMessage: 'Great! be on time..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Antony',
        avatarUrl:
            'https://robohash.org/Antony.png?set=set2&size=150x150', // Monster looking avatars
        lastMessage: "i'll see you soon...",
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Berserk',
        avatarUrl: 'https://robohash.org/Berserk.png?set=set2&size=150x150',
        lastMessage: 'Man on mission..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Headman',
        avatarUrl: 'https://robohash.org/Headman.png?set=set2&size=150x150',
        lastMessage: 'sure!',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'NLAC Group',
        avatarUrl: 'https://robohash.org/NLAC.png?set=set2&size=150x150',
        lastMessage: 'Great! be on time..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Anime fam',
        avatarUrl: 'https://robohash.org/Anime.png?set=set2&size=150x150',
        lastMessage: 'Great! be on time..',
        time: 'Yesterday',
      ),
      ChatListItemModel(
        name: 'Monster',
        avatarUrl: 'https://robohash.org/Monster.png?set=set2&size=150x150',
        lastMessage: 'Great! be on time..',
        time: 'Yesterday',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // Generate dummy data based on category
    final agents = _getAgentsForCategory();

    return Scaffold(
      backgroundColor: const Color(0xFF0F0F11),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F0F11),
        elevation: 0,
        title: Text(
          '$categoryTitle Chats',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.separated(
        itemCount: agents.length,
        separatorBuilder: (context, index) => const Divider(
          color: Color(0xFF232325),
          thickness: 1,
          indent: 85,
          endIndent: 20,
        ),
        itemBuilder: (context, index) {
          final agent = agents[index];

          final List<Color> avatarColors = [
            Colors.redAccent,
            Colors.green,
            Colors.orange,
            Colors.blueAccent,
          ];
          final bgColor = avatarColors[index % avatarColors.length];

          return ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8,
            ),
            leading: CircleAvatar(
              radius: 28, // Matches the size in the image roughly
              backgroundColor: bgColor,
              child: Text(
                agent.name.isNotEmpty ? agent.name[0].toUpperCase() : '?',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            title: Text(
              agent.name,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                agent.lastMessage,
                style: const TextStyle(color: Colors.grey, fontSize: 14),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            trailing: Text(
              agent.time,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
            onTap: () {
              // Now clicking on one of the agents guides into the existing ChatDetailScreen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatDetailScreen(agentName: agent.name),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
