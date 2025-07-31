import 'package:flutter/material.dart';

class LocationTile extends StatelessWidget {
  final String name;
  final String flagAsset;

  const LocationTile({super.key, required this.name, required this.flagAsset});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(flagAsset, height: 24),
      title: Text(name, style: TextStyle(color: Colors.white)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.network_cell, color: Colors.purple),
          SizedBox(width: 8),
          Icon(Icons.keyboard_arrow_down, color: Colors.white),
        ],
      ),

      onTap: () {
        // Handle location selection
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Selected location: $name')));
      },
    );
  }
}
