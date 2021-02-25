import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto = new TextStyle(fontSize: 10);
  final conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guillermo Balderas'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Numero de clic',
            style: TextStyle(fontSize: 20),
          ),
          Text('$conteo', style: estiloTexto),
        ],
      )),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.endFloat, //cambiar la posicion del boton
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola Mundo');
          //conteo = conteo ++1;
        },
      ),
    );
  }
}
