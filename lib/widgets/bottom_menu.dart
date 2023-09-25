import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mi_flutter/page/home_page.dart';
import 'package:mi_flutter/page/perfil_usuario.dart';

class BottomMenuItem {
  final String iconPath, label;

  BottomMenuItem({required this.iconPath, required this.label});
}

class BottomMenu extends StatelessWidget {
  final List<BottomMenuItem> items;

  BottomMenu({required this.items}) : assert(items != null && items.length > 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      /*Probar luego de Expanded*/
      color: Color(0xff00294b),
      padding: EdgeInsets.all(10),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(items.length, (index) {
            final BottomMenuItem item = items[index];
            return CupertinoButton(
              onPressed: () {
                final route = MaterialPageRoute(
                    builder: (BuildContext _) => PerfilUsuario(
                          nombre: homePage.routeName,
                        ));
                Navigator.push(context, route);
              },
              padding: EdgeInsets.zero,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SvgPicture.asset(
                    item.iconPath,
                    width: 20,
                    color: Colors.white,
                  ),
                  SizedBox(height: 3),
                  Text(
                    item.label,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
