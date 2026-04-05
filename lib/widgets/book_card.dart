import 'package:flutter/material.dart';
import '../models/book.dart';
import '../data/global_data.dart';

class BookCard extends StatelessWidget {
  final Book book;

  const BookCard({
    super.key,
    required this.book,
  });

  void _addToCart(BuildContext context) {
    globalCart.add(book);
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("${book.title} added to your cart!"), backgroundColor: Colors.amber),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF1B263B), // Magic dark blue card background
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.amber.withOpacity(0.5), width: 2),
      ),
      child: Column(
        children: [
          Image.network(book.imageUrl, height: 100, width: 100),
          const SizedBox(height: 10),
          Text(book.title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white), textAlign: TextAlign.center),
          const SizedBox(height: 5),
          Text(book.description, style: const TextStyle(fontSize: 12, color: Colors.white70), textAlign: TextAlign.center),
          const SizedBox(height: 10),
          Text("${book.price} LKR", style: const TextStyle(fontSize: 18, color: Colors.greenAccent, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          ElevatedButton(
             onPressed: () => _addToCart(context),
             child: const Text("Add to Cart", style: TextStyle(fontSize: 12)),
          )
        ],
      ),
    );
  }
}
