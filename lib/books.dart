class Book {
  final String title;
  final String urlImage;

  const Book({
    required this.title,
    required this.urlImage,
  });
}

const allBooks = [
  Book(title: 'Advanced Java', urlImage: 'assets/java.png'),
  Book(title: 'Cryptography', urlImage: 'assets/java.png'),
  Book(title: 'Web Technology', urlImage: 'assets/java.png'),
  // Book(
  // title: 'Software Engineering',
  // urlImage: 'https://unsplash.com/photos/WOVvLJyufnM'),
];
