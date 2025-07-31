import 'package:flutter/material.dart';
import '../widgets/location_tile.dart';

class VPNLocationScreen extends StatelessWidget {
  final List<Map<String, dynamic>> locations = [
    {"name": "United States", "flag": "us.png"},
    {"name": "France", "flag": "fr.png"},
    {"name": "Germany", "flag": "ge.png"},
    {"name": "Australia", "flag": "au.png"},
    {"name": "India", "flag": "in.png"},
    {"name": "Canada", "flag": "ca.png"},
    {"name": "Russia", "flag": "ru.png"},
    {"name": "United Kingdom", "flag": "uk.png"},
    {"name": "Japan", "flag": "jp.png"},
    {"name": "China", "flag": "cn.png"},
    {"name": "Netherlands", "flag": "nl.png"},
  ];

  VPNLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Choose Location',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search location',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.black26,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: locations.length,
                  itemBuilder: (context, index) {
                    return LocationTile(
                      name: locations[index]['name'],
                      flagAsset: 'assets/flags/${locations[index]['flag']}',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
