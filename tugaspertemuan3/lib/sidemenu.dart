import 'package:flutter/material.dart';
import 'package:tugaspertemuan3/about_page.dart';
import 'package:tugaspertemuan3/homepage.dart';

class Sidemenu extends StatelessWidget {
  const Sidemenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.grey, // Change background color of header
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/profile_image.png'), // Example profile image
                ),
                SizedBox(height: 10),
                Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
               
              ],
            ),
          ),
          const SizedBox(height: 10), // Add spacing between header and list tiles
          ListTile(
            leading: const Icon(Icons.home, color: Colors.grey),
            title: const Text('Home', style: TextStyle(fontSize: 18)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Homepage(),
                ),
              );
            },
          ),
          const Divider(), // Add divider between items for separation
          ListTile(
            leading: const Icon(Icons.info, color: Colors.grey),
            title: const Text('About', style: TextStyle(fontSize: 18)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutPage(),
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.redAccent),
            title: const Text('Logout', style: TextStyle(fontSize: 18)),
            onTap: () {
              // Handle logout action
            },
          ),
        ],
      ),
    );
  }
}
