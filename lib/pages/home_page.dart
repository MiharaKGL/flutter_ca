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
              const Text("Welcome to the Magical Realm!", style: TextStyle(fontSize: 20, color: Colors.amber)),
              const SizedBox(height: 30),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CategoryCard(title: "Fantasy", imageUrl: "https://cdn-icons-png.flaticon.com/512/3715/3715167.png"),
                  CategoryCard(title: "Adventure", imageUrl: "https://cdn-icons-png.flaticon.com/512/3281/3281289.png"),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CategoryCard(title: "Kids", imageUrl: "https://cdn-icons-png.flaticon.com/512/3081/3081079.png"),
                  CategoryCard(title: "Mystery", imageUrl: "https://cdn-icons-png.flaticon.com/512/2838/2838703.png"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
