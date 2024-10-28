import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
class Visor extends StatelessWidget {
    final String texto;
    const Visor(this.texto, {super.key});
    @override
    Widget build(BuildContext context) {
        return Expanded(
            flex: 1, // ocupar toda a altura da tela
        child: Container(
        color: const Color.fromRGBO(48, 48, 48, 1),
        child: Column(
        // mover texto para baixo
        mainAxisAlignment: MainAxisAlignment.end,
        // esticar largura coluna
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
        Padding(
        // aumentar distancia do texto
        padding: const EdgeInsets.all(10.0),
            child: AutoSizeText(
                texto,
                minFontSize: 20,
                maxFontSize: 80,
                maxLines: 1,
                textAlign: TextAlign.end,
                style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.none,
                    fontSize: 80,
                    color: Color.fromRGBO(211, 211, 211, 1),
                ),
            ),
        ),],),),);
    }}