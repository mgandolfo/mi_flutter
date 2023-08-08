import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'circle_container.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Stack(
        children: <Widget>[
          //SvgPicture.asset('assets/icons/logo.svg'),
          Positioned(
            child: Container(
              width: 40,
              height: 40,
              color: Colors.orange,
            ),
            left: 80,
            bottom: 80,
          ),
          Positioned(
            child: Container(
              color: Colors.red,
              width: 40,
              height: 40,
            ),
            right: 0,
          ),
          Positioned(
            child: Container(
              color: Colors.blue,
              width: 40,
              height: 40,
            ),
            left: 0,
          ),
          Positioned(
            child: Container(
              color: Colors.green,
              width: 40,
              height: 40,
            ),
            right: 0,
            bottom: 0,
          ),
          Positioned(
            child: Container(
              color: Colors.yellow,
              width: 40,
              height: 40,
            ),
            left: 0,
            bottom: 0,
          ),
        ],
      ),
    );
  }
}
