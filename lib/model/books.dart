class Books {
  final String id;
  final String name;
  final String author;
  final String date;
  final String pages;
  final String isbn;
  final String image;

  const Books({required this.id, required this.name, required this.author, required this.date, required this.pages,
    required this.isbn, required this.image});
}

List<Books> books = [
  const Books(
    id: "1",
    name: "Database Systems Design, Implementation, & Management, 13th edition",
    author: "Coronel/Morris ©2019",
    date: "2009-11-20",
    pages: "837",
    isbn: "978-1-337-62790-0",
    image: "assets/Libro1.jpg",
  ),
  const Books(
    id: "2",
    name: "Java Programming: The Beginning Beginner's Guide",
    author: "Keshav Patel",
    date: "2016-01-05",
    pages: "128",
    isbn: "0692614915",
    image: "assets/Libro2.jpg",
  ),
  const Books(
    id: "3",
    name: "Spa-Ciencia de los datos",
    author: "Jones Herbert",
    date: "2019-12-22",
    pages: "210",
    isbn: "9781647481445",
    image: "assets/Libro3.jpg",
  ),
  const Books(
    id: "4",
    name: "Spa-Ciencia de los datos",
    author: "Jones Herbert",
    date: "2019-12-22",
    pages: "210",
    isbn: "9781647481445",
    image: "assets/Libro3.jpg",
  ),
];