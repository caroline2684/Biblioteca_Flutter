import 'package:flutter/material.dart';

class PaginaProfile extends StatelessWidget {
  const PaginaProfile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: const Center(
        ),
      ),
    );
  }
}