import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class topMenu extends StatelessWidget {
  final String leftIcon, rightIcon;
  final VoidCallback onLeftClick, onRightClick;

  const topMenu(
      {super.key,
      required this.leftIcon,
      required this.rightIcon,
      required this.onLeftClick,
      required this.onRightClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff00294b),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CupertinoButton(
              child: SvgPicture.asset(
                leftIcon,
                width: 20,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(15),
              onPressed: onLeftClick),
          Text(
            "LOGO",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w900, color: Colors.white),
          ),
          CupertinoButton(
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      rightIcon,
                      width: 20,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    right: 12,
                    top: 12,
                    child: Container(
                      //child: Text("1",style: TextStyle(color: Colors.white),),
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                    ),
                  ),
                ],
              ),
              padding: EdgeInsets.all(0),
              onPressed: onRightClick),
        ],
      ),
    );
  }
}

/*AppBar(
backgroundColor: Color(0xff00294b),
elevation: 0,
title: Text(
"Mundo Motor Misiones",
style: TextStyle(color: Colors.white, fontSize: 25),
),
iconTheme: IconThemeData(color: Colors.white70),
leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
actions: [
IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
],
);*/
