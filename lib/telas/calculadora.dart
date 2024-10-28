import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../componentes/visor.dart';
import '../componentes/teclado.dart';
import '../modelos/memoria.dart';

class Calculatora extends StatefulWidget {
  const Calculatora({super.key});
  @override
  State<Calculatora> createState() => _CalculatoraState();
}
class _CalculatoraState extends State<Calculatora> {
  final Memoria memoria = Memoria();
  _pressionado(String comando) {
    if (kDebugMode) {
      print(comando);
    }
    setState(() {
      memoria.tratarDigito(comando);
    });
  }
  @override
  Widget build(BuildContext context) {

    // Abaixo obrigando a rodar na horizontal
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      home: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Visor(memoria.valor),
            const SizedBox(height: 2),
            Teclado(_pressionado),
          ],
    ),),);
  }
}