import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: Scaffold(
          appBar: AppBar(title: Text("ToDo")), // AppBar
          body: StreamBuilder(
              stream: Firestore.instance.collection('tareas').snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: Text("No hay datos"),
                  );
                }
                List<DocumentSnapshot> docs = snapshot.data.documents;
                return ListView.builder(
                  itemCount: docs.length,
                  itemBuilder: (context, index) {
                    Map<String, dynamic> data = docs[index].data;
                    return ListTile(
                      leading: Checkbox(
                        value: data['estado'],
                        onChanged: (value) {},
                      ),
                      title: Text(data['tarea']),
                    );
                  },
                );
              })),
    );
  }
}
