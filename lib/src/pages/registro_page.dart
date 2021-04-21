import 'package:flutter/material.dart';
import 'package:flutter_application/src/models/registro_model.dart';
import 'package:flutter_application/src/providers/registros_provider.dart';
import 'package:flutter_application/src/util/utils.dart' as utils;

class RegistroPage extends StatefulWidget {
  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  final formKey = GlobalKey<FormState>();

  RegistroModel registro = new RegistroModel();

  final registrosProvider = new RegistrosProvider();

  @override
  Widget build(BuildContext context) {
    final RegistroModel regisData = ModalRoute.of(context).settings.arguments;
    if (regisData != null) {
      registro = regisData;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                _crearNombre(),
                _crearApellido(),
                _crearCelular(),
                _crearCorreo(),
                _crearCuidad(),
                _crearColonia(),
                _crearCalle(),
                _crearCarrera(),
                SizedBox(height: 30.0),
                _crearBoton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _crearNombre() {
    return TextFormField(
      initialValue: registro.nombre,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(labelText: 'Nombre'),
      onSaved: (value) => registro.nombre = value,
      validator: (value) {
        if (value.length < 3) {
          return 'Ingrese su Nombre';
        } else {
          return null;
        }
      },
    );
  }

  Widget _crearApellido() {
    return TextFormField(
      initialValue: registro.apellido,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(labelText: 'Apellido'),
      onSaved: (value) => registro.apellido = value,
    );
  }

  _crearCorreo() {
    return TextFormField(
      initialValue: registro.correo,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(labelText: 'Correo'),
      onSaved: (value) => registro.correo = value,
    );
  }

  _crearCelular() {
    return TextFormField(
        initialValue: registro.celular.toString(),
        keyboardType: TextInputType.numberWithOptions(decimal: true),
        decoration: InputDecoration(labelText: 'Ingrese el numero de celular'),
        onSaved: (value) => registro.celular = int.parse(value),
        validator: (value) {
          if (utils.isNumeric(value)) {
            return null;
          } else {
            return 'Solo Nuumeros';
          }
        });
  }

  _crearColonia() {
    return TextFormField(
      initialValue: registro.colonia,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(labelText: 'Colonia'),
      onSaved: (value) => registro.colonia = value,
    );
  }

  _crearCuidad() {
    return TextFormField(
      initialValue: registro.cuidad,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(labelText: 'Cuidad'),
      onSaved: (value) => registro.cuidad = value,
    );
  }

  _crearCarrera() {
    return TextFormField(
      initialValue: registro.carrera,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(labelText: 'Carrera'),
      onSaved: (value) => registro.carrera = value,
    );
  }

  _crearCalle() {
    return TextFormField(
      initialValue: registro.calle,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(labelText: 'Calle y Número'),
      onSaved: (value) => registro.calle = value,
    );
  }

  _crearBoton() {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      label: Text('Guardar'),
      icon: Icon(Icons.save),
      color: Colors.black,
      textColor: Colors.white,
      onPressed: _submit,
    );
  }

  void _submit() {
    if (!formKey.currentState.validate()) return;
    formKey.currentState.save();

    print('todo ok');
    print(registro.nombre);
    print(registro.celular);

    if (registro.id == null) {
      registrosProvider.crearRegistro(registro);
      Navigator.pushNamed(context, '/');
    } else {
      registrosProvider.editarRegistro(registro);
      Navigator.pushNamed(context, '/');
    }
  }
} //final
