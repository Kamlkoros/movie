import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: SafeArea(
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
                  SizedBox(width: 30),
                  Text(
                    'Choose Location',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  hintText: 'Search location',
                  filled: true,
                  fillColor: Colors.black26,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF4B5563)),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF4B5563)),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red.withOpacity(0.5)),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  suffixIcon: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: Color(0xFF374957),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: locations.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        LocationTile(
                          name: locations[index]['name'],
                          flagAsset: 'assets/flags/${locations[index]['flag']}',
                        ),
                        Divider(
                          color: Colors.white.withOpacity(0.2),
                          thickness: 1,
                        ),
                      ],
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
