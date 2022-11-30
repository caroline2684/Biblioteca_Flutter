import 'package:flutter/material.dart';
import 'package:biblioteca_flutter/model/books.dart';

class BooksRow extends StatelessWidget {

  final Books books;

  const BooksRow(this.books, {super.key});

  @override
  Widget build(BuildContext context) {
    final booksThumbnail = Container(
      margin: const EdgeInsets.symmetric(
          vertical: 10.0
      ),
      alignment: FractionalOffset.centerLeft,
      child: Image(
        image: AssetImage(books.image),
        height: 100.0,
        width: 91.0,
      ),
    );

    const baseTextStyle = TextStyle(
        fontFamily: 'Poppins'
    );
    final regularTextStyle = baseTextStyle.copyWith(
        color: const Color(0xff000000),
        fontSize: 14.0,
        fontWeight: FontWeight.w400
    );
    final subHeaderTextStyle = regularTextStyle.copyWith(
        fontSize: 14.0
    );
    final headerTextStyle = baseTextStyle.copyWith(
        color: Colors.black,
        fontSize: 14.0,
        fontWeight: FontWeight.w600
    );

    Widget _booksValue({required String value, required String image}) {
      return Row(
          children: <Widget>[
            Image.asset(image, height: 14.0),
            Container(width: 4.0),
            Text(books.date, style: regularTextStyle),
          ]

      );
    }
    Widget _booksValue1({required String value, required String image}) {
      return Row(
          children: <Widget>[
            Image.asset(image, height: 16.0),
            Container(width: 3.0),
            Text(books.isbn, style: regularTextStyle),
          ]

      );
    }


    final booksCardContent = Container(
      margin: const EdgeInsets.fromLTRB(78.0, 16.0, 0, 0),
      constraints: const BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(height: 4.0),
          Text(books.name, style: headerTextStyle),
          Container(height: 4.0),
          Text(books.author, style: subHeaderTextStyle),
          Container(height: 4.0),
          Text(books.pages, style: subHeaderTextStyle),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 6.0),
              height: 0,
              width: 16.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: _booksValue(
                      value: books.date,
                      image: 'assets/date_to.png')
              ),
              Expanded(
                  child: _booksValue1(
                      value: books.isbn,
                      image: 'assets/834194.png')
              )
            ],
          ),
        ],
      ),
    );


    final booksCard = Container(
      height: 130.0,
      margin: const EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFEFE),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 1.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
      child: booksCardContent,
    );


    return Container(
        height: 130.0,
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 16.0,
        ),
        child: Stack(
          children: <Widget>[
            booksCard,
            booksThumbnail,
          ],
        )
    );
  }
}
