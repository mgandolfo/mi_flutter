import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_flutter/widgets/avatar.dart';

import 'circle_container.dart';

class Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        color: Color(0xffffffff),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Curso',
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 1,
                fontWeight: FontWeight.w600, color: Color(0xff999999),
              ),
            ),
            Text(
              "FLUTTER",
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w900,
                letterSpacing: 1,
                fontSize: 55,
              ),
            ),
            SizedBox(height: 10),
            Avatar(),
            SizedBox(height: 10),
            Text("Bienvenidos"),
            Text(
              "Mauricio Gandolfo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            /*SizedBox(height: 10),
            CupertinoButton(
              //minSize: 100,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.blue,
              child: Text('ENTRAR'),
              onPressed: () => print('Descargando'),
            ),*/
          ],
        ),
      ),
    );
  }
}
