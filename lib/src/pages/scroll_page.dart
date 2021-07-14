import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _pagina1(),
          _pagina2(),
        ],
      ),
    );
  }

  _pagina1() {
    return Stack(
      children: [
        _colorFondo(),
        _imagenFondo(),
        _crearFecha(),
      ],
    );
  }

  _pagina2() {
    return Stack(
      children: [
        _colorFondo(),
        _crearBoton(),
      ],
    );
  }

  _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
    );
  }

  _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/imagendos.png'),
        // expando la imagen
        fit: BoxFit.cover,
      ),
    );
  }

  _crearFecha() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50);
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 20),
          Text('11', style: estiloTexto),
          Text("Miercoles", style: estiloTexto),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_up, size: 70, color: Colors.white),
        ],
      ),
    );
  }

  _crearBoton() {
    return Center(
      child: RaisedButton(
        shape: StadiumBorder(),
        color: Colors.lightGreenAccent[400],
        textColor: Colors.black,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          child: Text('Entrar', style: TextStyle(fontSize: 25)),
        ),
        onPressed: () {},
      ),
    );
  }
}
