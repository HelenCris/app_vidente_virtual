import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const VidenteVirtualPage());
}

class VidenteVirtualPage extends StatelessWidget {
  const VidenteVirtualPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff332B25),
        appBar: AppBar(
          backgroundColor: Colors.brown[600],
          title: Text('Vidente Virtual'),
        ),
        body: Vidente(),
      ),
    );
  }
}

class Vidente extends StatefulWidget {
  Vidente({Key? key}) : super(key: key);

  @override
  State<Vidente> createState() => _VidenteState();
}

class _VidenteState extends State<Vidente> {
  int numeroDaImagem = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextButton(
            onPressed: () {
              setState(() {
                numeroDaImagem = Random().nextInt(5) + 2;
              });
            },
            child: Image.asset("assets/images/vidente$numeroDaImagem.png")),
      ],
    );
  }
}
