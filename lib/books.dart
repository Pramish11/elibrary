class Book {
  final String title;
  final String urlImage;

  const Book({
    required this.title,
    required this.urlImage,
  });
}

const allBooks = [
  Book(
      title: 'Advanced Java',
      urlImage:
          'https://cdn.shopify.com/s/files/1/0319/8425/5109/products/Java_1000x.png?v=1637243895'),
  Book(
      title: 'Cryptography',
      urlImage:
          'https://cdn.shopify.com/s/files/1/0319/8425/5109/products/Java_1000x.png?v=1637243895'),
  Book(
      title: 'Web Technology',
      urlImage:
          'https://cdn.shopify.com/s/files/1/0319/8425/5109/products/Java_1000x.png?v=1637243895'),
  // Book(
  // title: 'Software Engineering',
  // urlImage: 'https://unsplash.com/photos/WOVvLJyufnM'),
];
