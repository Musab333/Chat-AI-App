import 'package:flutter/material.dart';

class ExploreItemModel {
  final String title;
  final String description;
  final IconData icon;
  final Color iconColor;

  ExploreItemModel({
    required this.title,
    required this.description,
    required this.icon,
    required this.iconColor,
  });
}

final List<ExploreItemModel> exploreItems = [
  ExploreItemModel(
    title: 'Art',
    description: 'Create digital art, from sketches to finished pieces',
    icon: Icons.brush_outlined,
    iconColor: const Color(0xFF9C27B0), // Purple
  ),
  ExploreItemModel(
    title: 'Booking',
    description:
        'Find stays, flights, car rentals, airport taxis, and attractions.',
    icon: Icons.calendar_today_outlined,
    iconColor: const Color(0xFFFF9800), // Orange
  ),
  ExploreItemModel(
    title: 'Code',
    description:
        'Write programming code or algorithms for complex applications.',
    icon: Icons.code,
    iconColor: const Color(0xFF4CAF50), // Green
  ),
  ExploreItemModel(
    title: 'Content',
    description: 'Generate well-written paragraphs on any given subject.',
    icon: Icons.description_outlined,
    iconColor: const Color(0xFF2196F3), // Blue
  ),
  ExploreItemModel(
    title: 'Entertainment',
    description: 'Recommendations based on preferences, interests, and mood.',
    icon: Icons.auto_awesome_outlined,
    iconColor: const Color(0xFFCDDC39), // Lime
  ),
  ExploreItemModel(
    title: 'Translator',
    description: 'Translate to any language preserving tone, and context.',
    icon: Icons.translate,
    iconColor: const Color(0xFF009688), // Teal
  ),
  ExploreItemModel(
    title: 'Health',
    description:
        'Get health tips, monitor vitals, and maintain your wellbeing.',
    icon: Icons.favorite,
    iconColor: const Color(0xFFF44336), // Red
  ),
  ExploreItemModel(
    title: 'Music',
    description: 'Discover new tracks, create playlists, and enjoy your tunes.',
    icon: Icons.music_note,
    iconColor: const Color(0xFFE040FB), // Purple Accent
  ),
];
