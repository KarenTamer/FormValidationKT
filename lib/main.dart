import 'package:flutter/material.dart';
import 'package:formvalidationkt/src/blocs/provider.dart';
import 'package:formvalidationkt/src/pages/producto_page.dart';
import 'package:formvalidationkt/src/pages/registro_page.dart';
import 'package:formvalidationkt/src/pages/home_page.dart';
import 'package:formvalidationkt/src/pages/login_page.dart';
import 'src/preferencias_usuario/preferencias_usuario.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final prefs = new PreferenciasUsuario();
    print(prefs.token);

    return Provider(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'registro': (BuildContext context) => RegistroPage(),
        'home': (BuildContext context) => HomePage(),
        'producto': (BuildContext context) => ProductoPage(),
      },
      theme: ThemeData(
        primaryColorDark: Color.fromARGB(255, 103, 77, 248),
      ),
    ));
  }
}