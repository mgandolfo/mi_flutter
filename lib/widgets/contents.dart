import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_flutter/widgets/avatar.dart';
import 'package:mi_flutter/widgets/cronometro.dart';
import 'package:mi_flutter/widgets/red_social.dart';
import 'package:mi_flutter/widgets/top_menu.dart';

import '../page/perfil_usuario.dart';
import 'circle_container.dart';

class Contents extends StatelessWidget {
  bool _isEnable = false; // guion bajo declara como propiedad privada PRIVATE

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
            /*topMenu(
              rightIcon: 'assets/icons/campana.svg',
              leftIcon: 'assets/icons/hogar.svg',
              onLeftClick: () {
                final route = MaterialPageRoute(
                    builder: (BuildContext _) => PerfilUsuario());
              },
              onRightClick: () {},
            ),*/ //MiAppBar
            Text(
              'Curso',
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 1,
                fontWeight: FontWeight.w600,
                color: Color(0xff999999),
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
            Container(
              height: 1,
              width: 200,
              margin: EdgeInsets.symmetric(vertical: 20),
              color: Color(0xffcccccc),

            ),
            //RedSocial(),

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
