import 'package:encuesta/preguntas/tres.dart';
import 'package:flutter/material.dart';

class DOS extends StatefulWidget {
  final int contador;
  const DOS(this.contador, [Key key]) : super(key: key);

  @override
  _DOSState createState() => _DOSState();
}

class _DOSState extends State<DOS> {
  int calificacion = 0;
  @override
  Widget build(BuildContext context) {
    calificacion = widget.contador;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ITSSNA -PREGUNTA 2 DE 5")),
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
                  "¿Durante su tiempo de estadia en el Instituto el personal fue amable?",
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
                          builder: (_) => TRES(calificacion)));
                    },
                    child: Image.asset('assets/1.png')),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                    onTap: () {
                      calificacion = calificacion + 4;
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => TRES(calificacion)));
                    },
                    child: Image.asset('assets/2.png')),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                    onTap: () {
                      calificacion = calificacion + 3;
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => TRES(calificacion)));
                    },
                    child: Image.asset('assets/3.png')),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                    onTap: () {
                      calificacion = calificacion + 2;
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => TRES(calificacion)));
                    },
                    child: Image.asset('assets/4.png')),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                    onTap: () {
                      calificacion = calificacion + 1;
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => TRES(calificacion)));
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
