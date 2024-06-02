import 'package:flutter/material.dart';
import 'package:flutter_practice/secondPage.dart';

class FirstPage extends StatelessWidget {
  String nameText = "";
  final List<String> entries = <String>['A', 'B', 'C'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("first"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(child: Text('Entry ${entries[index]}'));
        },
      ),
    );
  }
}
