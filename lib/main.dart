import 'package:biblioteca_flutter/main.dart';
import 'package:biblioteca_flutter/pages/PaginaHome.dart';
import 'package:biblioteca_flutter/pages/books/PaginaBooks.dart';
import 'package:biblioteca_flutter/pages/PaginaProfile.dart';
import 'package:biblioteca_flutter/pages/search/PaginaSearch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() =>_MyAppState();
}
class _MyAppState extends State<MyApp> {
  int _pagactual=0;
  final List<Widget> _paginas=[
    const PaginaHome(),
    const PaginaBooks(),
    const PaginaSearch(),
    const PaginaProfile(),
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        body: _paginas[_pagactual],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              _pagactual=index;
            });
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: _pagactual,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: "Books"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ],

        ),
      ),
    );
  }
}

