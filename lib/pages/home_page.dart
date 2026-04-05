import 'package:flutter/material.dart';
import 'cart_page.dart';
import 'profile_page.dart';
import '../widgets/category_card.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _goToCart(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage()));
  }

  void _goToProfile(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SpellAura the Book Store"),
        actions: [
          IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () => _goToCart(context)),
          IconButton(icon: const Icon(Icons.person), onPressed: () => _goToProfile(context)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text("Welcome to the Magical Realm!", style: TextStyle(fontSize: 40, color: Colors.amber)),
              const SizedBox(height: 30),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CategoryCard(title: "Fantacy", imageUrl: "https://cdn.pixabay.com/photo/2023/12/07/11/11/girl-8435339_1280.png"),
                  CategoryCard(title: "Adventure", imageUrl: "https://cdn.pixabay.com/photo/2023/03/17/14/26/bear-7858736_1280.jpg"),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CategoryCard(title: "Kids", imageUrl: "https://cdn.pixabay.com/photo/2023/10/06/10/55/toddler-8297939_1280.jpg"),
                  CategoryCard(title: "Mystery", imageUrl: "https://cdn.pixabay.com/photo/2026/02/28/19/02/kyraxys-alien-10149042_1280.png"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
