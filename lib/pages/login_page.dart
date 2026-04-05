import 'package:flutter/material.dart';
import '../data/global_data.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _loginUsername = TextEditingController();
  final TextEditingController _loginPassword = TextEditingController();

  final TextEditingController _signupUsername = TextEditingController();
  final TextEditingController _signupEmail = TextEditingController();
  final TextEditingController _signupPhone = TextEditingController();
  final TextEditingController _signupAddress = TextEditingController();
  final TextEditingController _signupPassword = TextEditingController();
  final TextEditingController _signupRePassword = TextEditingController();

  void _login() {
    globalUsername = _loginUsername.text.isNotEmpty ? _loginUsername.text : "Magical Guest";
    globalEmail = "guest@magic.com"; 
    globalPhone = "0000000000";
    globalAddress = "Sector 7, SpellAura Library Space";

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  void _register() {
    globalUsername = _signupUsername.text;
    globalEmail = _signupEmail.text;
    globalPhone = _signupPhone.text;
    globalAddress = _signupAddress.text;

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/3004/3004613.png',
              height: 120,
              width: 120,
            ),
            const SizedBox(height: 10),
            const Text(
              "SpellAura",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.amber),
            ),
            const Text(
              "The Book Store",
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const SizedBox(height: 30),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1B263B), // Card background
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          const Text("Sign In", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                          const SizedBox(height: 10),
                          TextField(
                            controller: _loginUsername,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(labelText: "Username"),
                          ),
                          TextField(
                            controller: _loginPassword,
                            obscureText: true,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(labelText: "Password"),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: _login,
                            child: const Text("Login"),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1B263B),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          const Text("Sign Up", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                          const SizedBox(height: 10),
                          TextField(
                            controller: _signupUsername,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(labelText: "Username"),
                          ),
                          TextField(
                            controller: _signupEmail,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(labelText: "Email"),
                          ),
                          TextField(
                            controller: _signupPhone,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(labelText: "Phone Number"),
                          ),
                          TextField(
                            controller: _signupAddress,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(labelText: "Address"),
                          ),
                          TextField(
                            controller: _signupPassword,
                            obscureText: true,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(labelText: "Password"),
                          ),
                          TextField(
                            controller: _signupRePassword,
                            obscureText: true,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(labelText: "Re-enter Password"),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: _register,
                            child: const Text("Register"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
