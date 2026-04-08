import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AgendaPage extends StatelessWidget {
  final _user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    DateTime dataAtual = DateTime.now();
    DateTime dataFinal = dataAtual.add(Duration(days: 45));

    List<int> dias = [];
    DateTime data = dataAtual;
    while (data.isBefore(dataFinal)) {
      dias.add(data.day);
      data = data.add(Duration(days: 1));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Agenda de ${_user?.displayName}"),
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushReplacementNamed(context, "/login");
            },
            icon: Icon(Icons.logout_outlined),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "/novo"),
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            color: Colors.blue[100],
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (int dia in dias)
                  GestureDetector(
                    onTap: () {}, // TODO: Carrega agenda do dia
                    child: Container(
                      padding: EdgeInsets.all(6),
                      margin: EdgeInsets.only(right: 6),
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        dia.toString().padLeft(2, "0"),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.calendar_month),
            title: Text("Dentista"),
            subtitle: Text("01/04/2026 às 14h00"),
          ),
        ],
      ),
    );
  }
}
