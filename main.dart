import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Create a list of fruit strings
  List<String> fruits = ["Apple",
    "Banana",
    "Orange",
    "Strawberry",
    "Grapes",
    "Pineapple",
    "Mango",
    "Kiwi",
    "Peach",
    "Pear",
    "Cherry",
    "Blueberry",
    "Raspberry"];

  // Function to reverse the list
  void reverseList() {
    setState(() {
      fruits = fruits.reversed.toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fruit List'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: reverseList,
              child: Text('Reverse List'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: fruits.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(fruits[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}