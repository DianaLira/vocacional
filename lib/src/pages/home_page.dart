import 'package:flutter/material.dart';

import 'package:flutter_application/src/providers/menu_provider.dart';
import 'package:flutter_application/src/utils/icons_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, 'registro');
            },
          ),
          IconButton(
            icon: Icon(Icons.remove_red_eye),
            onPressed: () {
              Navigator.pushNamed(context, 'mostrar');
            },
          ),
        ],
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // print(menuProvider.opciones);
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );

    /* return ListView(
      children: _listItems(),
    );*/
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final widgetTem = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);

          //indica a solo una ruta
          /* final route = MaterialPageRoute(builder: (context) {
            return AlertPage();
          });

          Navigator.push(context, route);*/
        },
      );
      opciones
        ..add(widgetTem)
        ..add(Divider(
          color: Colors.black54,
        ));
    });

    return opciones;
  }
}
