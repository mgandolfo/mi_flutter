import 'package:flutter/material.dart';
import 'package:mi_flutter/widgets/bottom_menu.dart';
import 'package:mi_flutter/widgets/contents.dart';

class homePage extends StatefulWidget {
  static final routeName = 'home';
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  bool isEnable = false; // guion bajo declara como propiedad privada PRIVATE
  double _fontSize = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      bottomNavigationBar: BottomMenu(items: [
        BottomMenuItem(
            iconPath: 'assets/icons/usuario.svg', label: 'Mi perfil'),
        BottomMenuItem(
            iconPath: 'assets/icons/grafico-histograma.svg',
            label: 'Mis logros'),
        BottomMenuItem(
            iconPath: 'assets/icons/lista-del-portapapeles.svg',
            label: 'Trabajos Prácticos'),
        BottomMenuItem(
            iconPath: 'assets/icons/comprobacion-de-lista.svg',
            label: 'Mis cursos'),
      ]),
      body: Contents(), //CONTENEDORES
    );
  }
}
