import 'package:brain_movement/src/textos/texto_sentadilla.dart';
import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  const BasicoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final estiloDelTitulo =
        TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
    final estiloSubTitulo = TextStyle(fontSize: 18);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _crearImagen(),
            _crearTitulo(estiloDelTitulo, estiloSubTitulo),
            _crearAcciones(),
            _crearTexto(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.camera_alt),
      ),
    );
  }

  _crearTitulo(estiloDelTitulo, estiloSubTitulo) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sentadillas', style: estiloDelTitulo),
                  SizedBox(height: 7),
                  Text('Algoritmo correcto para Sentadillas',
                      style: estiloSubTitulo),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30),
            Text('41', style: TextStyle(fontSize: 20))
          ],
        ),
      ),
    );
  }

  _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
          height: 300,
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://cdn.shopify.com/s/files/1/1907/0427/files/13_3_consejos_rapidos_para_mejorar_tus_sentadillas_8_grande.gif?v=1570629699')),
    );
  }

  _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _acciones(icono: Icons.play_circle, texto: 'Probar'),
        _acciones(icono: Icons.price_change, texto: 'Precio'),
        _acciones(icono: Icons.share, texto: 'Compartir'),
      ],
    );
  }

  Column _acciones({required IconData icono, required texto}) {
    return Column(
      children: [
        Icon(icono, color: Colors.blue, size: 40),
        SizedBox(height: 5),
        Text(
          texto,
          style: TextStyle(fontSize: 15, color: Colors.blue),
        )
      ],
    );
  }

  _crearTexto() {
    return SafeArea(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Text(Texto().descripcion,
              textAlign: TextAlign.justify, style: TextStyle(fontSize: 20))),
    );
  }
}
