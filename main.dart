import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextField Misoli'),
        ),
        body: MyTextField(),
      ),
    );
  }
}

class MyTextField extends StatefulWidget {
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Matn kiriting',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              print('Kiritilgan matn: ${_controller.text}');
            },
            child: Text('Yuborish'),
          ),
        ],
      ),
    );
  }
}
  