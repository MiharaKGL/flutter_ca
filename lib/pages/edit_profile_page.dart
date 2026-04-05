import 'package:flutter/material.dart';
import '../data/global_data.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final TextEditingController _editUsername = TextEditingController();
  final TextEditingController _editEmail = TextEditingController();
  final TextEditingController _editPhone = TextEditingController();
  final TextEditingController _editAddress = TextEditingController();

  @override
  void initState() {
    super.initState();
    _editUsername.text = globalUsername;
    _editEmail.text = globalEmail;
    _editPhone.text = globalPhone;
    _editAddress.text = globalAddress;
  }

  void _saveProfile() {
    globalUsername = _editUsername.text;
    globalEmail = _editEmail.text;
    globalPhone = _editPhone.text;
    globalAddress = _editAddress.text;

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
               color: const Color(0xFF1B263B), // Dark blue
               borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Update your details", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.amber)),
                const SizedBox(height: 20),
                TextField(
                  controller: _editUsername,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(labelText: "Username"),
                ),
                TextField(
                  controller: _editEmail,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(labelText: "Email"),
                ),
                TextField(
                  controller: _editPhone,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(labelText: "Phone"),
                ),
                TextField(
                  controller: _editAddress,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(labelText: "Address"),
                ),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: _saveProfile,
                    child: const Text("Save"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
