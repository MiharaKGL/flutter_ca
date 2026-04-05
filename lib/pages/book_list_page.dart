import 'package:flutter/material.dart';
import '../widgets/book_card.dart';
import '../models/book.dart';

class BookListPage extends StatelessWidget {
  final String category;
  
  const BookListPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$category Books"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Explore $category Collection", style: const TextStyle(fontSize: 22, color: Colors.amber, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        BookCard(book: Book(title: "The Magic Spell", price: 1500, description: "A magical adventure.",
                         imageUrl: "assets/image1.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Dragon's Lair", price: 2000, description: "Fight the ancient dragon.", imageUrl: "assets/image3.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Wizard's Wand", price: 1200, description: "Learn real magic.", imageUrl: "assets/image4.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Mystic Potion", price: 1800, description: "Secrets of the potion.", imageUrl: "assets/image5.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Ancient Scroll", price: 2500, description: "The lost knowledge.", imageUrl: "assets/image6.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Mystic Potion", price: 1800, description: "Secrets of the potion.", imageUrl: "assets/image7.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Ancient Scroll", price: 2500, description: "The lost knowledge.", imageUrl: "assets/image8.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Ancient Scroll", price: 2500, description: "The lost knowledge.", imageUrl: "assets/image9.jpg")),
                      ],
                    ),
                    Row(
                      children: [
                        BookCard(book: Book(title: "The Magic Spell", price: 1500, description: "A magical adventure.", imageUrl: "https://cdn-icons-png.flaticon.com/512/3389/3389081.png")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Dragon's Lair", price: 2000, description: "Fight the ancient dragon.", imageUrl: "https://cdn-icons-png.flaticon.com/512/3004/3004593.png")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Wizard's Wand", price: 1200, description: "Learn real magic.", imageUrl: "https://cdn-icons-png.flaticon.com/512/3135/3135069.png")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Mystic Potion", price: 1800, description: "Secrets of the potion.", imageUrl: "https://cdn-icons-png.flaticon.com/512/2883/2883907.png")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Ancient Scroll", price: 2500, description: "The lost knowledge.", imageUrl: "https://cdn-icons-png.flaticon.com/512/2436/2436780.png")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Mystic Potion", price: 1800, description: "Secrets of the potion.", imageUrl: "https://cdn-icons-png.flaticon.com/512/2883/2883907.png")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Ancient Scroll", price: 2500, description: "The lost knowledge.", imageUrl: "https://cdn-icons-png.flaticon.com/512/2436/2436780.png")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Ancient Scroll", price: 2500, description: "The lost knowledge.", imageUrl: "https://cdn-icons-png.flaticon.com/512/2436/2436780.png")),
                      ],
                    ),
                    Row(
                      children: [
                        BookCard(book: Book(title: "The Magic Spell", price: 1500, description: "A magical adventure.", imageUrl: "https://cdn-icons-png.flaticon.com/512/3389/3389081.png")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Dragon's Lair", price: 2000, description: "Fight the ancient dragon.", imageUrl: "https://cdn-icons-png.flaticon.com/512/3004/3004593.png")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Wizard's Wand", price: 1200, description: "Learn real magic.", imageUrl: "https://cdn-icons-png.flaticon.com/512/3135/3135069.png")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Mystic Potion", price: 1800, description: "Secrets of the potion.", imageUrl: "https://cdn-icons-png.flaticon.com/512/2883/2883907.png")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Ancient Scroll", price: 2500, description: "The lost knowledge.", imageUrl: "https://cdn-icons-png.flaticon.com/512/2436/2436780.png")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Mystic Potion", price: 1800, description: "Secrets of the potion.", imageUrl: "https://cdn-icons-png.flaticon.com/512/2883/2883907.png")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Ancient Scroll", price: 2500, description: "The lost knowledge.", imageUrl: "https://cdn-icons-png.flaticon.com/512/2436/2436780.png")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Ancient Scroll", price: 2500, description: "The lost knowledge.", imageUrl: "https://cdn-icons-png.flaticon.com/512/2436/2436780.png")),
                      ],
                    ),
                  ],
                )
                
                
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
