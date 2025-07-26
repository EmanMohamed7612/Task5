import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;

  const CategoryItem({required this.title});

  @override
  Widget build(BuildContext context) {
    IconData icon;
    switch (title) {
      case 'Sofas':
        icon = Icons.weekend;
        break;
      case 'Wardrobe':
        icon = Icons.door_front_door_outlined;
        break;
      case 'Desk':
        icon = Icons.table_bar;
        break;
      case 'Dresser':
        icon = Icons.table_chart;
        break;
      default:
        icon = Icons.category;
    }

    return Container(
      width: 80,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Icon(icon, size: 30),
          SizedBox(height: 6),
          Text(title, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
