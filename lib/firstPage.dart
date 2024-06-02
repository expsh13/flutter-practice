import 'package:flutter/material.dart';
import 'package:flutter_practice/secondPage.dart';

class FirstPage extends StatelessWidget {
  String nameText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("first"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (String text) {
                  nameText = text;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "name"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => secondPage(nameText),
                      ));
                },
                child: const Text('secondへ'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
