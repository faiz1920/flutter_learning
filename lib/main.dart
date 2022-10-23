import 'package:flutter/material.dart';

void main() {
  runApp(const App1());
}

class App1 extends StatelessWidget {
  const App1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello World",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello World"),
        ),
        body: const Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}
