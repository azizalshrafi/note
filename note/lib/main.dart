import 'package:flutter/material.dart';
import 'package:note/pages/note.dart';

void main(List<String> args) {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const NotePage(),
    );
  }
}
