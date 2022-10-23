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
          /** set size of container */
          width: 500,
          height: 500,
          /** align child element
           * if alignment is removed child element will takeup parent width & height
           */
          alignment: Alignment.center,
          /** set margin to container */
          margin: const EdgeInsets.all(20),
          /** set padding to container */
          padding: const EdgeInsets.all(10),
          /** add style to container */
          decoration: BoxDecoration(
            /** background-color of container */
            color: Colors.green.shade50,
            /** border of container */
            border: Border.all(color: Colors.red, width: 1.0, style: BorderStyle.solid, strokeAlign: StrokeAlign.inside),
            /** border-radius of container */
            /** rounded borders */
            // borderRadius: const BorderRadius.all(
            //   Radius.circular(15),
            // ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: const ChildWidget(),
        ),
      ),
    );
  }
}

class ChildWidget extends StatelessWidget {
  final color;
  final size;

  const ChildWidget({super.key, this.color = Colors.black, this.size = 100.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.blue.shade100,
    );
  }
}
