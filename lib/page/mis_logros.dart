import 'package:flutter/material.dart';

import '../widgets/top_menu.dart';

class MisLogrosArgs {
  final String username;
  final bool isActive;

  MisLogrosArgs({required this.username, required this.isActive});
}

class MisLogros extends StatefulWidget {
  static final routeName  = 'logros';


  @override
  State<StatefulWidget> createState() => MisLogrosState();
}

class MisLogrosState extends State<MisLogros> {
  @override
  Widget build(BuildContext context) {
    final Object? args = ModalRoute.of(context)?.settings.arguments;
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
              onRightClick: () {},
            ),
            Expanded(
                child: Center(
              child: Text(args.toString()),
            )),
          ],
        ),
      ),
    ));
  }
}
