import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final estiloTexto = new TextStyle(fontSize: 20);
  var _conteo = 0;

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
              style: estiloTexto,
            ),
            Text('$_conteo', style: estiloTexto),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation
            .endFloat, //cambiar la posicion del boton
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(children: <Widget>[
      SizedBox(width: 30),
      FloatingActionButton(
        child: Icon(Icons.exposure_zero),
        onPressed: _reset,
      ),
      Expanded(
        child: SizedBox(
          width: 30.0,
        ),
      ),
      FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: _sustraer,
      ),
      FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _agregar,
      ),
    ]);

    /* FloatingActionButton(
      child: Icon(Icons.add_alarm),
      onPressed: null,
    );*/
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
