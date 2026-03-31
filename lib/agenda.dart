import 'package:flutter/material.dart';

class AgendaPage extends StatelessWidget {
  const AgendaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agenda"),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushReplacementNamed(context, "/login"),
            icon: Icon(Icons.logout_outlined),
          ),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "/novo"),
        child: Icon(Icons.add),
      ),
    );
  }
}
