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
                        BookCard(book: Book(title: "The Magic Spell", price: 1500, description: "A magical adventure.", imageUrl: "assets/image10.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Dragon's Lair", price: 2000, description: "Fight the ancient dragon.", imageUrl: "assets/image11.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Wizard's Wand", price: 1200, description: "Learn real magic.", imageUrl: "assets/image12.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Mystic Potion", price: 1800, description: "Secrets of the potion.", imageUrl: "assets/image13.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Ancient Scroll", price: 2500, description: "The lost knowledge.", imageUrl: "assets/image14.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Mystic Potion", price: 1800, description: "Secrets of the potion.", imageUrl: "assets/image15.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Ancient Scroll", price: 2500, description: "The lost knowledge.", imageUrl: "assets/image16.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Ancient Scroll", price: 2500, description: "The lost knowledge.", imageUrl: "assets/image17.jpg")),
                      ],
                    ),
                    Row(
                      children: [
                        BookCard(book: Book(title: "The Magic Spell", price: 1500, description: "A magical adventure.", imageUrl: "assets/image18.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Dragon's Lair", price: 2000, description: "Fight the ancient dragon.", imageUrl: "assets/image19.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Wizard's Wand", price: 1200, description: "Learn real magic.", imageUrl: "assets/image20.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Mystic Potion", price: 1800, description: "Secrets of the potion.", imageUrl: "assets/image21.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Ancient Scroll", price: 2500, description: "The lost knowledge.", imageUrl: "assets/image22.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Mystic Potion", price: 1800, description: "Secrets of the potion.", imageUrl: "assets/image23.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Ancient Scroll", price: 2500, description: "The lost knowledge.", imageUrl: "assets/image24.jpg")),
                        const SizedBox(width: 15),
                        BookCard(book: Book(title: "Ancient Scroll", price: 2500, description: "The lost knowledge.", imageUrl: "assets/image25.jpg")),
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
