import 'package:flutter/material.dart';
import 'package:flutter_application/src/pages/alert_page.dart';
import 'package:flutter_application/src/routes/routes.dart';

//import 'package:flutter_application/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      // home: HomePageTemp());
      //    home: HomePage());

      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
    );
  }
}
