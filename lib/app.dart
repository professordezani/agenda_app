import 'package:flutter/material.dart';
import 'login.dart';
import 'registro.dart';
import 'agenda.dart';
import 'novo.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      routes: {
        "/login": (context) => LoginPage(),
        "/registro": (context) => RegistroPage(),
        "/agenda": (context) => AgendaPage(),
        "/novo": (context) => NovoPage(),
      },
      initialRoute: "/login",
    );
  }
}
