import 'package:encuesta/preguntas/uno.dart';
import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Encuesta',
      home: Bienvenida(),
    );
  }
}

class Bienvenida extends StatefulWidget {
  @override
  _BienvenidaState createState() => _BienvenidaState();
}

class _BienvenidaState extends State<Bienvenida> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("ITSSNA -ENCUESTA DE SATISFACCION"),
        ),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
                child: Image.asset(
              'assets/descarga.png',
              height: 100,
            )),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, right: 15.0, left: 15.0),
              child: Text(
                "Estimado usuario le solicitamos 1 minuto de su tiempo para evaluar nuestros servicios.",
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, right: 16.0, left: 16.0, bottom: 30.0),
              child: Text(
                "El propocito de esta evaluacion es mejorar la experiencia que reciben nuestras visitas",
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
            RaisedButton.icon(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => UNO(),
                ));
              },
              icon: Icon(Icons.check_circle),
              label: Text("Aceptar"),
              color: Colors.red,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
