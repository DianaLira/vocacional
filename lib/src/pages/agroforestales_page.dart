import 'package:flutter/material.dart';

class Agroforestales extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('Agroforestal'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.west),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: ListView(
        padding: EdgeInsets.all(2.0),
        children: <Widget>[
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cartdTitulo(),
          SizedBox(height: 15.0),
          _universidades(
              'Universidad Nacional Autónoma de México',
              'https://universidadesdemexico.mx/universidades/universidad-nacional-autonoma-de-mexico/licenciatura-en-ciencias-agroforestales',
              'https://cdnmundo1.img.sputniknews.com/img/108776/04/1087760422_0:190:3285:2048_1920x0_80_0_0_9aa42e5f9752d5cd53e998a8bb1f47d9.jpg'),
          _universidades(
              'Benemérita Universidad Autónoma de Puebla',
              'https://www.educaweb.mx/curso/licenciatura-ingenieria-agroforestal-puebla-307692/',
              'https://universidadesdemexico.mx/img/article/buap-carreras-en-linea'),
        ],
      ),
    );
  }

  _cardTipo1() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Ingeniería agroforestal'),
            subtitle: Text(
                'La ingeniería agroforestal es una rama de las ciencias agropecuarias que se encarga del conocimiento de los recursos naturales y los agroecosistemas, especialmente de las relaciones que se establecen cuando se combinan árboles, cultivos y animales-pastos en la misma unidad de terreno manteniendo los principios de sustenibilidad, productividad y adaptabilidad. '),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  _cardTipo2() {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.all(4),
        elevation: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Column(
            children: <Widget>[
              /* Image(
            image: NetworkImage(
                'https://www.fundacionunam.org.mx/wp-content/uploads/2019/06/agroforestal_contenido2.jpg'),
          ),*/
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Ingeniería agroforestal',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    FadeInImage(
                      image: NetworkImage(
                          'https://micarrerauniversitaria.com/wp-content/uploads/2018/02/ingenieria-agroforestal.jpg'),
                      placeholder: AssetImage('assets/carga.gif'),
                      fadeInDuration: Duration(milliseconds: 200),
                      height: 300.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                        'La ingeniería agroforestal es una rama de las ciencias agropecuarias que se encarga del conocimiento de los recursos naturales y los agroecosistemas, especialmente de las relaciones que se establecen cuando se combinan árboles, cultivos y animales-pastos en la misma unidad de terreno manteniendo los principios de sustenibilidad, productividad y adaptabilidad. '),
                    SizedBox(height: 10.0),
                    Text(
                      'Ingeniería Agroforestal: ¿De qué se encarga?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                        'El Ingeniero Agroforestal está encargadao de varias funciones importantes, es así como tiene dentro de las ocupaciones a realizar las de:'),
                    SizedBox(height: 5.0),
                    Text('Investigar'),
                    SizedBox(height: 5.0),
                    Text('Diseñar'),
                    SizedBox(height: 5.0),
                    Text('Planificar'),
                    SizedBox(height: 5.0),
                    Text('Organizar'),
                    SizedBox(height: 5.0),
                    Text('Administrar'),
                    SizedBox(height: 5.0),
                    Text(
                        'Todo lo que se refiere a los sistemas que se encargan de la producción agrícola en lo que se denomina a campo abierto y bajo las mejores condiciones siendo ellas controladas.'),
                    SizedBox(height: 10.0),
                    FadeInImage(
                      image: NetworkImage(
                          'https://micarrerauniversitaria.com/wp-content/uploads/2018/02/ingenieria-agroforestal-10.jpg'),
                      placeholder: AssetImage('assets/carga.gif'),
                      fadeInDuration: Duration(milliseconds: 200),
                      height: 300.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                        'Igualmente se encarga de lo que son las plantaciones y de las industrias de orden forestal. Siendo que se fundamenta en lo que son las ciencias y la tecnología referidas a cada una de las áreas que tienen que ver con la producción.'),
                    Text(
                      'Campo Laboral',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                        'Dentro de las empresas que solicitan los servicios del Ingeniero Agroforestal se encuentran aquellos que están dentro del sector agrario y que son denominados agroexportadores dentro de los principales se tienen los de:'),
                    SizedBox(height: 5.0),
                    Text('Café'),
                    SizedBox(height: 5.0),
                    Text('Palto o Aguacate'),
                    SizedBox(height: 5.0),
                    Text('Mango'),
                    SizedBox(height: 5.0),
                    Text('Cacao'),
                    SizedBox(height: 5.0),
                    Text('Frutales'),
                    SizedBox(height: 5.0),
                    Text(
                        'Las labores podrán ser ejercidas tanto en los productores de la empresa privada, organismos denominados no gubernamentales, también en empresas de origen internacional.'),
                    SizedBox(height: 10.0),
                    FadeInImage(
                      image: NetworkImage(
                          'https://micarrerauniversitaria.com/wp-content/uploads/2018/02/ingenieria-agroforestal-7-1.jpg'),
                      placeholder: AssetImage('assets/carga.gif'),
                      fadeInDuration: Duration(milliseconds: 200),
                      height: 300.0,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                        'Igualmente se pueden destacar en labores dentro de Centros de Investigación y además en instituciones educacionales como universidades.'),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  _universidades(nombre, linkUni, linkImg) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.all(15),
        elevation: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Column(
            children: <Widget>[
              FadeInImage(
                // En esta propiedad colocamos la imagen a descargar
                image: NetworkImage(linkImg),

                // En esta propiedad colocamos el gif o imagen de carga
                // debe estar almacenado localmente
                placeholder: AssetImage('assets/carga.gif'),

                // En esta propiedad colocamos mediante el objeto BoxFit
                // la forma de acoplar la imagen en su contenedor
                fit: BoxFit.cover,

                // En esta propiedad colocamos el alto de nuestra imagen
                height: 260,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text('Nombre de la Universidad:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(nombre,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text('Link para mayor información:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(linkUni,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        )),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  _cartdTitulo() {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        margin: EdgeInsets.all(4),
        elevation: 10,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Column(children: [
              Text('Universidades que Ofrecen Esta Carrera',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
            ])));
  }
}
