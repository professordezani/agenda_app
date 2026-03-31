import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                // filled: true,
                // fillColor: Colors.blue[100],
                // border: InputBorder.none
                border: OutlineInputBorder(),
                labelText: "E-mail",
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Senha",
                prefixIcon: Icon(Icons.password_outlined),
                suffixIcon: IconButton(
                  onPressed: () {}, // Exercício.
                  icon: Icon(Icons.remove_red_eye_sharp),
                )
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushReplacementNamed(context, "/agenda"),
              child: Text("Entrar"),
            ),
            TextButton(
              onPressed: () => Navigator
                .pushNamed(context, "/registro"),
              child: Text("Registrar"),
            ),
          ]
        ),
      ),
    );
  }
}
