import 'package:flutter/material.dart';

class BookshelfPage extends StatelessWidget {
  final List<Book> books = List.generate(
    15,
    (index) => Book(
      title: 'Book $index',
      author: 'Author $index',
      coverUrl: 'https://via.placeholder.com/150',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookshelf'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(child: BooksRow(books: books)),
            Expanded(child: BooksRow(books: books)),
            Expanded(child: BooksRow(books: books)),
          ],
        ),
      ),
    );
  }
}

class BooksRow extends StatelessWidget {
  final List<Book> books;

  BooksRow({required this.books});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: books.length,
      itemBuilder: (context, index) {
        return BookCard(book: books[index]);
      },
    );
  }
}

class Book {
  final String title;
  final String author;
  final String coverUrl;

  Book({required this.title, required this.author, required this.coverUrl});
}

class BookCard extends StatelessWidget {
  final Book book;

  const BookCard({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
            book.coverUrl,
            height: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.0),
          Text(
            book.title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(book.author, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
