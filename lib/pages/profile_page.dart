import 'package:flutter/material.dart';
import '../data/global_data.dart';
import 'edit_profile_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void _editProfile() async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const EditProfilePage()),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Profile"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
               color: const Color(0xFF1B263B), // Dark blue background
               borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Image(image: NetworkImage("https://cdn.pixabay.com/photo/2017/01/31/20/31/animal-2027045_1280.png"),height: 300, width: 300,),
                const SizedBox(height: 20),
                Text("Username: $globalUsername", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 15),
                Text("Email: $globalEmail", style: const TextStyle(fontSize: 18, color: Colors.white70)),
                const SizedBox(height: 10),
                Text("Phone: $globalPhone", style: const TextStyle(fontSize: 18, color: Colors.white70)),
                const SizedBox(height: 10),
                Text("Address: $globalAddress", style: const TextStyle(fontSize: 18, color: Colors.white70)),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: _editProfile,
                  child: const Text("Edit Profile"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
