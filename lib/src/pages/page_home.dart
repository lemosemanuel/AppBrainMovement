import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondoApp(),
          SingleChildScrollView(
              child: Column(children: [
            _crearTitulos(),
            _botonesRedondeados(),
          ])),
        ],
      ),
      bottomNavigationBar: _bottomNavigatorBar(context),
    );
  }

  _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(00, 0.6),
              end: FractionalOffset(00, 1),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 37, 1.0)
          ])),
    );
    final cajaRosa = Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 330,
        height: 330,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
              begin: FractionalOffset(1, 1),
              end: FractionalOffset(0, 1),
              colors: [
                Color.fromRGBO(236, 98, 188, 1),
                Color.fromRGBO(241, 142, 172, 1)
              ]),
        ),
      ),
    );

    return Stack(
      children: [
        gradiente,
        Positioned(
          child: cajaRosa,
          top: -100,
        )
      ],
    );
  }

  _crearTitulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Elige tus Servicios',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
              'Comienza a disfrutar con nuestros algoritmos personalizados',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  _bottomNavigatorBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(
        fixedColor: Colors.pinkAccent,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.run_circle_sharp, size: 30), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today, size: 30), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_add_alt_sharp, size: 30),
              title: Container()),
        ],
      ),
    );
  }

  _botonesRedondeados() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue, Icons.border_all, "Calendario"),
            _crearBotonRedondeado(Colors.purple, Icons.play_arrow, "Empezar"),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(
                Colors.pinkAccent, Icons.medical_services, "Rehabilitación"),
            _crearBotonRedondeado(
                Colors.orange, Icons.insert_chart_sharp, "Estadisticas"),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue, Icons.directions_run, "General"),
            _crearBotonRedondeado(
                Colors.green, Icons.directions_bike_rounded, "Deporte"),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(
                Colors.orangeAccent, Icons.accessibility_new, "kinesionlogia"),
            _crearBotonRedondeado(Colors.teal, Icons.settings, "Soporte"),
          ],
        ),
      ],
    );
  }

  _crearBotonRedondeado(Color color, IconData icono, String texto) {
    return Container(
      height: 180,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 5),
          CircleAvatar(
            backgroundColor: color,
            radius: 35,
            child: Icon(icono, color: Colors.white, size: 30),
          ),
          Text(
            texto,
            style: TextStyle(color: color),
          ),
          SizedBox(height: 5)
        ],
      ),
    );
  }
}
