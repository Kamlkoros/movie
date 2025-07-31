import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          Icon(FontAwesomeIcons.chevronDown, color: Color(0xFFAEAEAE),size: 16,),
        ],
      ),

      onTap: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Selected location: $name')));
      },
    );
  }
}
