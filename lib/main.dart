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
          // width: 500,
          // height: 500,
          /** align child element
           * if alignment is removed child element will takeup parent width & height
           */
          // alignment: Alignment.center,
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
          /** Column */
          // child: Column(
          //   mainAxisSize: MainAxisSize.max,
          //   /** MainAxis Alignment
          //    * in case of Row main-axis is x-axis
          //    * in case of Columns main-axis is y-axis
          //    * MainAxis is like justify-content in css
          //   */
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   /** CrossAxis Alignment
          //    * in case of Row cross-axis is x-axis
          //    * in case of Columns cross-axis is y-axis
          //    * CrossAxis is like align-items in css
          //   */
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: const [
          //     ChildWidget(
          //       color: Colors.amber,
          //     ),
          //     /** Expanded widget will work as grow property in flex css
          //      * it automatically takesup all left over space
          //      * also we can pass ration in which each Expanded widget will expand in available space
          //      */
          //     Expanded(
          //       flex: 1,
          //       child: ChildWidget(
          //         size: 120.0,
          //         color: Colors.red,
          //       ),
          //     ),
          //     Expanded(
          //       flex: 2,
          //       child: ChildWidget(size: 50.0),
          //     )
          //   ],
          // ),

          /** Stack */
          child: Stack(
            children: [
              const ChildWidget(
                color: Colors.green,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: ChildWidget(
                  color: Colors.yellow,
                ),
              ),
              Container(
                alignment: const Alignment(0, 0),
                child: const ChildWidget(
                  color: Colors.red,
                ),
              ),
              /** Positioned widget works as Absolute position in css */
              const Positioned(
                  top: 50,
                  right: 50,
                  child: ChildWidget(
                    color: Colors.teal,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class ChildWidget extends StatelessWidget {
  final color;
  final size;

  const ChildWidget({super.key, this.color = Colors.blue, this.size = 100.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      color: color,
      child: const Icon(
        Icons.ac_unit,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}
