import 'package:flutter/material.dart';
import 'package:biblioteca_flutter/model/books.dart';
import 'Books_row.dart';

class BookPageBody extends StatelessWidget {
  const BookPageBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index) => BooksRow(books[index]),
                  childCount: books.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
