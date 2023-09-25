import 'package:flutter/material.dart';
import 'package:mi_flutter/page/precarga.dart';
import 'package:mi_flutter/page/mis_logros.dart';
import 'package:mi_flutter/page/perfil_usuario.dart';
import 'page/home_page.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return MaterialApp(
      home: Precarga(),
      //ir a paginas diferentes
      routes: {
        MisLogros.routeName: (BuildContext context) => MisLogros(),
        homePage.routeName: (BuildContext context) => homePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
