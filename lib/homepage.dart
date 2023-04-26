import 'package:elibrary/books.dart';
import 'package:elibrary/profile.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Book> books = allBooks;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text('Brain&Gain'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            margin: EdgeInsets.only(left: 35, right: 35),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  hintText: "search for books...",
                  hintStyle: TextStyle(color: Colors.green),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              onChanged: searchBook,
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: books.length,
            itemBuilder: (context, index) {
              final book = books[index];

              return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 30,
                    child: Image.asset(book.urlImage),
                  ),
                  title: Text(book.title),
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookPage(book: book),
                        ),
                      ));
            },
          )),
        ]),
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(color: Colors.deepPurpleAccent),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                  (Route<dynamic> route) => false,
                );
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: Icon(Icons.library_books),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: Icon(Icons.history),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                  (Route<dynamic> route) => false,
                );
                ;
              },
              icon: Icon(Icons.menu),
            ),
          ],
        ),
      ),
    );
  }

  void searchBook(String query) {
    final suggestions = allBooks.where((book) {
      final bookTitle = book.title.toLowerCase();
      final input = query.toLowerCase();
      return bookTitle.contains(input);
    }).toList();

    setState(() => books = suggestions);
  }
}

class BookPage extends StatelessWidget {
  final Book book;
  const BookPage({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(book.title),
        ),
        body: Builder(builder: (context) {
          return Image.network(
            book.urlImage,
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          );
        }),
      );
}
