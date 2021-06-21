import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

// Privado, sólo vive en este archivo
class _ContadorPageState extends State<ContadorPage>{
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
        elevation: 6,
        shadowColor: Colors.blue,
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de clicks:',
              style: _estiloTexto,
            ),
            Text('$_conteo', style: _estiloTexto)
          ],
        ),
      ),
      // Si le pasamos null al onPressed es como tenerlo en disabled
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      SizedBox(width: 30.0,),
      FloatingActionButton(
        child: Icon(Icons.replay_outlined),
        onPressed: () {

          setState(() {
            _conteo = 0;
          });
        },
      ),
      Expanded(child: SizedBox()),
      FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: () {

          setState(() {
            _conteo--;
          });
        },
      ),
      SizedBox(width: 5.0),
      FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {

          setState(() {
            _conteo++;
          });
        },
      )
    ]);
  }
}