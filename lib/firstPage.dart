import 'package:flutter/material.dart';
import 'package:flutter_practice/secondPage.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("first"),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => secondPage(), fullscreenDialog: true));
        },
        child: const Text('secondへ'),
      )),
    );
  }
}
