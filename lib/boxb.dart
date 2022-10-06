import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final double enterwidth;

  const NeuBox({
    super.key,
    required this.child,
    required this.height,
    required this.width,
    required this.enterwidth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height,
        width: width,
        // color: Colors.green,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(enterwidth),
          //shape: shape,
          color: Colors.grey[300],
          boxShadow: [
            //bottom left
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 25,
              offset: const Offset(5, 5),
            ),

            //top right

            // ignore: prefer_const_constructors
            BoxShadow(
              color: Colors.white,
              blurRadius: 25,
              offset: Offset(-5, -1),
            ),
          ],
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
