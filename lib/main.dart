import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const Layout());
}

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello World",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello World"),
        ),
        /** container is like empty span/div in html*/
        body: Container(
          color: Colors.white,
          child: const Card(),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black12),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 200,
            color: Colors.purple,
            child: const Icon(Icons.search),
          ),
          const Text(
            "Faiz Ansari",
            style: TextStyle(fontSize: 40),
          ),
          const Text("Welcome"),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => {
                      log('message'),
                    },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.red),
                      backgroundColor: MaterialStateProperty.all(Colors.blue.shade100),
                    ),
                    child: const Text("Click Me!"),
                  ),
                  TextButton(
                    onPressed: () => {
                      log('message'),
                    },
                    style: TextButton.styleFrom(foregroundColor: Colors.blue, backgroundColor: Colors.black12),
                    child: const Text("Click Me!"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () => {
                      log('message'),
                    },
                    style: TextButton.styleFrom(foregroundColor: Colors.black),
                    child: const Text("Click Me!"),
                  ),
                  const ElevatedButton(
                    onPressed: null,
                    child: Text("Click Me!"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Click Me!"),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
