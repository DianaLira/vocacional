import 'package:flutter/material.dart';

class DatosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x232323),
      appBar: AppBar(
        title: Text('Seguridad de Datos'),
      ),
      body: ListView(
        padding: EdgeInsets.all(4.0),
        children: <Widget>[
          _cardTipo2(),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }

  _cardTipo2() {
    return Card(
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
                  'Ciencia de Datos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 10.0),
                FadeInImage(
                  image: NetworkImage(
                      'https://www.maximaformacion.es/wp-content/uploads/2020/09/Qu%C3%A9-es-la-Ciencia-de-Datos-840x430.jpg'),
                  placeholder: AssetImage('assets/carga.gif'),
                  fadeInDuration: Duration(milliseconds: 200),
                  height: 300.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10.0),
                Text(
                    'Existe una gran discusión sobre qué es la Ciencia de Datos, pero podemos resumirla en la siguiente frase: “La Ciencia de Datos (o Data Science) es la disciplina que convierte los datos en conocimiento útil”.'),
                SizedBox(height: 10.0),
                Text(
                  'Qué es la Ciencia de Datos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                    'El Ingeniero Agroforestal está encargadao de varias funciones importantes, es así como tiene dentro de las ocupaciones a realizar las de:'),
                SizedBox(height: 5.0),
                Text(
                    'Es decir, la Ciencia de Datos domina el espectro completo del ciclo de vida de los datos:'),
                SizedBox(height: 10.0),
                FadeInImage(
                  image: NetworkImage(
                      'https://tec-ps.com/wp-content/uploads/2018/07/Data-Science-life-cycle.jpg'),
                  placeholder: AssetImage('assets/carga.gif'),
                  fadeInDuration: Duration(milliseconds: 200),
                  height: 300.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                    '- La captura de los datos (recepción de señales y adquisición de datos),'),
                SizedBox(height: 5.0),
                Text(
                    '- Su gestión y procesamiento (ordenación, limpieza, transformación e ingeniería de datos),'),
                SizedBox(height: 5.0),
                Text(
                    '- Su exploración (minería de datos, agrupación / clasificación, modelado de datos, resumen de datos)'),
                SizedBox(height: 5.0),
                Text(
                    '- Su análisis (exploratorio / confirmatorio, análisis predictivo, regresión, minería de texto, análisis cualitativo),'),
                SizedBox(height: 5.0),
                Text(
                    '- Y su comunicación (informes reproducibles, visualización interactiva y apoyo a la toma de decisiones).'),
                SizedBox(height: 5.0),
                Text(
                    'Y el aprendizaje automático (o Machine Learning), basado en la experiencia, estudia y diseña algoritmos para la toma de decisiones.'),
                Text(
                  'Cómo nace la Ciencia de Datos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                    'Los orígenes de esta disciplina se remontan a 1962 cuando John W. Tukey discutía el futuro de la estadística matemática como ciencia empírica, y a 1974 cuando Peter Naur puso énfasis en los datos y acuñó el término “Ciencia de Datos”. A partir de 1977 el término fue integrado en varias asociaciones y conferencias de ámbito estadístico y computacional.'),
                SizedBox(height: 5.0),
                Text(
                    'Seguramente William S. Cleveland fue el primero en tratar la Ciencia de Datos como una disciplina independiente en 2001.'),
                SizedBox(height: 5.0),
                Text(
                    'Y más recientemente, el ganador del premio Turing, Jim Gray, imaginó la Ciencia de Datos como un «cuarto paradigma» de la ciencia (empírico, teórico, computacional, y ahora basado en datos), y afirmó que «todo lo relacionado con la ciencia está cambiando debido al impacto de la tecnología de la información y el diluvio de datos”.'),
                SizedBox(height: 5.0),
                FadeInImage(
                  image: NetworkImage(
                      'https://www.maximaformacion.es/wp-content/uploads/2020/09/C%C3%B3mo-nace-la-Ciencia-de-Datos.png'),
                  placeholder: AssetImage('assets/carga.gif'),
                  fadeInDuration: Duration(milliseconds: 200),
                  height: 300.0,
                  fit: BoxFit.cover,
                ),
                Text(
                  'Cuáles son las aplicaciones de la Ciencia de Datos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                    'La Ciencia de Datos es una de las profesiones que actualmente tiene más demanda de profesionales cualificados de todo el mundo. Puede aplicarse prácticamente a cualquier campo:'),
                SizedBox(height: 10.0),
                Text(
                    '- Los sistemas de recomendación de productos utilizan habitualmente la Ciencia de Datos para extraen información de los buscadores y las redes sociales (e.g. historial de navegación, de compras e información sociodemográfica asociada) para entrenar modelos de aprendizaje automático que realicen recomendaciones más precisas basada en el perfil del usuario.'),
                SizedBox(height: 5.0),
                Text(
                    '- En sectores de innovación tecnológica, como los coches autónomos, la Ciencia de Datos utiliza datos en tiempo real (de varios tipos de sensores) para crear un mapa visual de su entorno y tomar decisiones de conducción cruciales como girar, detenerse, acelerar, etc.'),
                SizedBox(height: 5.0),
                Text(
                    '- En el mundo científico, tanto en previsión meteorológica como en agricultura, los Científicos de Datos recopilan información de satélites, radares, barcos y aviones para construir modelos que puedan pronosticar el tiempo y también predecir calamidades naturales inminentes con gran precisión. Esto ayuda a tomar las medidas adecuadas en el momento adecuado y evitar el máximo daño posible.'),
                SizedBox(height: 5.0),
                Text(
                    '- En este sentido, es interesante la discusión que plantea Kirk Borne, PhD, científico de datos principal de Booz Allen Hamilton, sobre cómo los científicos de datos pueden ayudar en la nueva era de datos más grandes y complejos.'),
                SizedBox(height: 5.0),
                Text(
                    'Las labores podrán ser ejercidas tanto en los productores de la empresa privada, organismos denominados no gubernamentales, también en empresas de origen internacional.'),
                SizedBox(height: 10.0),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
