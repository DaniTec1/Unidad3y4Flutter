import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Firebase extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Firebase',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Lista de tareas fireabase"),
          ),
          body: StreamBuilder(
              stream: Firestore.instance.collection('tareas').snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: Text("No hay Datos"),
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
              }),
        ));
  }
}
