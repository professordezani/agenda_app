import 'package:flutter/material.dart';

class NovoPage extends StatelessWidget {
  const NovoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          spacing: 16,
          children: [
            TextField(
              minLines: 1,
              maxLines: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Descrição",
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Salvar"),
            ),
          ],
        ),
      )
    );
  }
}
