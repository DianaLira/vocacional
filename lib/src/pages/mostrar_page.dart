import 'package:flutter/material.dart';
import 'package:flutter_application/src/models/registro_model.dart';
import 'package:flutter_application/src/providers/registros_provider.dart';

class MostrarPage extends StatelessWidget {
  final registrosProvider = new RegistrosProvider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datos'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_box_sharp),
        onPressed: () {
          Navigator.pushNamed(context, 'registro');
        },
      ),
      body: _crearListado(),
    );
  }

  Widget _crearListado() {
    return FutureBuilder(
      future: registrosProvider.cargaRegistros(),
      builder:
          (BuildContext context, AsyncSnapshot<List<RegistroModel>> snapshot) {
        if (snapshot.hasData) {
          final registros = snapshot.data;
          return ListView.builder(
            itemCount: registros.length,
            itemBuilder: (context, i) => _crearItem(context, registros[i]),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Widget _crearItem(BuildContext context, RegistroModel registro) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        color: Colors.black54,
      ),
      onDismissed: (direccion) {
        registrosProvider.borrarRegistro(registro.id);
      },
      child: ListTile(
        title: Text('${registro.nombre} ${registro.apellido}'),
        subtitle: Text('${registro.correo} | Carrera: ${registro.carrera}'),
        onTap: () =>
            Navigator.pushNamed(context, 'registro', arguments: registro),
      ),
    );
  }
}
