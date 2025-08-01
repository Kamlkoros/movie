import 'dart:ui';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('My Profile', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Your Name',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'yourname@gmail.com',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            ListTile(
              leading: const Icon(Icons.edit, color: Colors.white),
              title: const Text(
                'Edit Profile',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/edit_profile');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.white),
              title: const Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Stack(
                      children: [
                        BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                          child: Container(color: Colors.black.withOpacity(0.5)),
                        ),
                        Center(
                          child: Card(
                            color: const Color(0xFF1E1E1E),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 30),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Settings',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.close, color: Colors.white),
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                    ],
                                  ),
                                  const Divider(color: Colors.white24),
                                  ListTile(
                                    title: const Text('Vlc Player', style: TextStyle(color: Colors.white)),
                                    trailing: const Icon(Icons.toggle_off, color: Colors.white),
                                    onTap: () {
                                      Navigator.pop(context);
                                      // Your logic here
                                    },
                                  ),
                                  ListTile(
                                    title: const Text('Language', style: TextStyle(color: Colors.white)),
                                    trailing: const Text('Eng',),
                                    onTap: () {
                                      Navigator.pop(context);
                                      // Your logic here
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.vpn_lock, color: Colors.white),
              title: const Text(
                'Vpn Protection',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/vpn_main_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications, color: Colors.white),
              title: const Text(
                'Notifications',
                style: TextStyle(color: Colors.white),
              ),
                onTap: () {
                  showDialog(
                    context: context,
                    barrierColor: Colors.black.withOpacity(0.3),
                    builder: (BuildContext context) {
                      return Stack(
                        children: [
                          BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                            child: Container(color: Colors.transparent),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Card(
                              color: const Color(0xFF1E1E1E),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                              margin: const EdgeInsets.only(right: 16),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context); // ✅ closes popup
                                        // TODO: handle Allow logic
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(vertical: 10),
                                        child: Text('Allow', style: TextStyle(color: Colors.white, fontSize: 16)),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context); // ✅ closes popup
                                        // TODO: handle Mute logic
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(vertical: 10),
                                        child: Text('Mute', style: TextStyle(color: Colors.white, fontSize: 16)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.redAccent),
              title: const Text(
                'Logout',
                style: TextStyle(color: Colors.redAccent),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
