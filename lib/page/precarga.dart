import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_flutter/page/home_page.dart';
import 'package:mi_flutter/page/mis_logros.dart';

class Precarga extends StatefulWidget {
  Precarga({super.key});

  @override
  State<StatefulWidget> createState() => PrecargaState();
}

class PrecargaState extends State<Precarga> with AfterLayoutMixin {
  @override
  void InitState() {
    super.initState();
  }

  @override
  void afterFirstLayout(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((_) {
      //Navigator.pushNamed(context, 'home');
      Navigator.pushReplacementNamed(context, homePage.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoActivityIndicator(
          radius: 15,
        ),
      ),
    );
  }
}
