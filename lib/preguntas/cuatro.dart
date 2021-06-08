import 'package:encuesta/preguntas/cinco.dart';
import 'package:flutter/material.dart';

class CUATRO extends StatefulWidget {
  final int contador;
  const CUATRO(this.contador, [Key key]) : super(key: key);

  @override
  _CUATROState createState() => _CUATROState();
}

class _CUATROState extends State<CUATRO> {
  int calificacion = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ITSSNA -PREGUNTA 4 DE 5")),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                child: Text(
                  "¿Que calificaion le daria al estado de la Institucion?",
                  style: TextStyle(fontSize: 30.0),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                    onTap: () {
                      calificacion = calificacion + 5;
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => CINCO(calificacion)));
                    },
                    child: Image.asset('assets/1.png')),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                    onTap: () {
                      calificacion = calificacion + 4;
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => CINCO(calificacion)));
                    },
                    child: Image.asset('assets/2.png')),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                    onTap: () {
                      calificacion = calificacion + 3;
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => CINCO(calificacion)));
                    },
                    child: Image.asset('assets/3.png')),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                    onTap: () {
                      calificacion = calificacion + 2;
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => CINCO(calificacion)));
                    },
                    child: Image.asset('assets/4.png')),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                    onTap: () {
                      calificacion = calificacion + 1;
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => CINCO(calificacion)));
                    },
                    child: Image.asset('assets/5.png')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
