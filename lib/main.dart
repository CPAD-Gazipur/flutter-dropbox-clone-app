import 'package:flutter/material.dart';
import 'package:flutter_dropbox_ui_clone/views/views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'DropBox',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
