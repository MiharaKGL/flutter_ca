import 'package:flutter/material.dart';
import '../pages/book_list_page.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const CategoryCard({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  void _goToCategory(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookListPage(category: title),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1B263B), // Dark blue themed card
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: 140, // Fixed width helps align rows consistently
        child: Column(
          children: [
            Image.network(imageUrl, height: 70, width: 70), // Cartoon image
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _goToCategory(context),
              child: const Text("View Books", style: TextStyle(fontSize: 12)),
            )
          ],
        ),
      ),
    );
  }
}
