import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistroPage extends StatelessWidget {
  const RegistroPage({super.key});

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
                border: OutlineInputBorder(),
                labelText: "Nome",
                prefixIcon: Icon(Icons.text_fields_outlined),
              ),
            ),
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
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: "a@b.com",
                  password: "123456",
                );

                Navigator.of(context)
                  ..pop()
                  ..pushReplacementNamed("/agenda");
              },
              child: Text("Registrar"),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Voltar"),
            ),
          ],
        ),
      ),
    );
  }
}
