// To parse this JSON data, do
//
//     final registroModel = registroModelFromJson(jsonString);

import 'dart:convert';

RegistroModel registroModelFromJson(String str) =>
    RegistroModel.fromJson(json.decode(str));

String registroModelToJson(RegistroModel data) => json.encode(data.toJson());

class RegistroModel {
  String id;
  String nombre;
  String apellido;
  int celular;
  String correo;
  String cuidad;
  String colonia;
  String calle;
  String carrera;

  RegistroModel({
    this.id,
    this.nombre = '',
    this.apellido = '',
    this.celular = 0,
    this.correo = '',
    this.cuidad = '',
    this.colonia = '',
    this.calle = '',
    this.carrera = '',
  });

  factory RegistroModel.fromJson(Map<String, dynamic> json) => RegistroModel(
        id: json["id"],
        nombre: json["nombre"],
        apellido: json["apellido"],
        celular: json["celular"],
        correo: json["correo"],
        cuidad: json["cuidad"],
        colonia: json["colonia"],
        calle: json["calle"],
        carrera: json["carrera"],
      );

  Map<String, dynamic> toJson() => {
        //"id": id,
        "nombre": nombre,
        "apellido": apellido,
        "celular": celular,
        "correo": correo,
        "cuidad": cuidad,
        "colonia": colonia,
        "calle": calle,
        "carrera": carrera,
      };
}
