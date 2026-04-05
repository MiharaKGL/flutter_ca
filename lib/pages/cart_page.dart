import 'package:flutter/material.dart';
import '../data/global_data.dart';
import '../models/book.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  double _calculateTotal() {
    double total = 0;
    for (Book book in globalCart) {
      total += book.price;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    double subtotal = _calculateTotal();
    double deliveryFee = 300.0;
    double finalTotal = subtotal > 0 ? subtotal + deliveryFee : 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Cart"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Items Selected:", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.amber)),
              const SizedBox(height: 20),
              
              if (globalCart.isEmpty)
                const Text("Your cart is magically empty.", style: TextStyle(fontSize: 18, color: Colors.white70))
              else
                Column(
                  children: [
                    for (Book book in globalCart)
                      Card(
                        color: const Color(0xFF1B263B), // Dark blue
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(book.title, style: const TextStyle(fontSize: 18, color: Colors.white)),
                              Text("${book.price} LKR", style: const TextStyle(fontSize: 18, color: Colors.greenAccent)),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
                
              const SizedBox(height: 30),

              if (globalCart.isNotEmpty)
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1B263B),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Delivery fee:", style: TextStyle(fontSize: 18)),
                          Text("$deliveryFee LKR", style: const TextStyle(fontSize: 18)),
                        ],
                      ),
                      const Divider(color: Colors.white54),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Total price:", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                          Text("$finalTotal LKR", style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.amber)),
                        ],
                      ),
                    ],
                  ),
                ),
              
              const SizedBox(height: 30),
              const Center(
                child: Text("Cash on Delivery Only", style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text("Your order will be delivered to the address you have already saved", textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: Colors.white54)),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  onPressed: globalCart.isEmpty ? null : () {
                    setState(() {
                      globalCart.clear();
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Order confirmed! Magical books are on the way."), backgroundColor: Colors.green),
                    );
                    Navigator.pop(context);
                  },
                  child: const Text("Buy Now", style: TextStyle(fontSize: 18)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
