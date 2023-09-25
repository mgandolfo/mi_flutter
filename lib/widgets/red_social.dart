import 'package:flutter/cupertino.dart';

class RedSocial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              width: 50,
              height: 50,
              color: Color(0xff3B5998),
            ),
            //flex: 1,
          ),
          Expanded(
            child: Container(
              width: 50,
              height: 50,
              color: Color(0xff00ACEE),
            ),
            //flex: 1,
          ),
          Expanded(
            child: Container(
              width: 50,
              height: 50,
              color: Color(0xff25D366),
            ),

            //flex: 1,
          ),
        ],
      ),
    );
  }
}
