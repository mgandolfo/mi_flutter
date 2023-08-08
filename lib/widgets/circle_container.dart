import 'package:flutter/material.dart';

class circleContainer extends StatelessWidget {
  final Widget child;
  final double width, height;

  circleContainer(
      {required this.child, required this.width, required this.height})
      : assert(child != null),
        assert(width != null),
        assert(height != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      /*width: double.infinity,*/
      width: width,
      height: height,
      child: Center(
        child: this.child,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xfff0f0f0),
        boxShadow: [
          BoxShadow(
              color: Colors.black26, blurRadius: 10, offset: Offset(5, 5)),
        ],
        /*borderRadius: BorderRadius.circular(150),*/
        shape: BoxShape.circle,
      ),
    );
  }
}
