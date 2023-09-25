import 'package:flutter/material.dart';
import 'package:mi_flutter/page/mis_logros.dart';
import '../widgets/top_menu.dart';

class PerfilUsuario extends StatefulWidget {
  final String nombre;

  PerfilUsuario({super.key, required this.nombre}) : assert(nombre != null);

  @override
  State<StatefulWidget> createState() => PerfilUsuarioState();
}

class PerfilUsuarioState extends State<PerfilUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            topMenu(
              rightIcon: 'assets/icons/campana.svg',
              leftIcon: 'assets/icons/angulo-pequeno-izquierdo.svg',
              onLeftClick: () => Navigator.pop(context),
              onRightClick: () {
                //Navigator.pushNamedAndRemoveUntil(context, 'newRouteName', (route) => false);
                Navigator.pushNamed(context, MisLogros.routeName,
                    arguments:
                        MisLogrosArgs(username: 'Mauricio', isActive: true));
              },
            ),
            Expanded(
                child: Center(
              child: Text(widget.nombre),
            )),
          ],
        ),
      ),
    ));
  }
}
