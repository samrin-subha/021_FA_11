import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String? subtitle;

  const SettingTile({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: iconColor.withOpacity(.1),
          borderRadius:
          BorderRadius.circular(14),
        ),
        child: Icon(icon, color: iconColor),
      ),

      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),

      subtitle: subtitle != null
          ? Text(subtitle!)
          : null,

      trailing: const Icon(
        Icons.chevron_right,
        size: 30,
        color: Colors.grey,
      ),
    );
  }
}