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
        
      ),
    );
  }
}
