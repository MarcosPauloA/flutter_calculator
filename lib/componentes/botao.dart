import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  static const corPadrao = Color.fromRGBO(199, 199, 199, 1.0); // Dark Gray
  static const corOperacao = Color.fromRGBO(0, 0, 0, 1.0); // Black
  final String texto;
  final bool duplo;
  final Color cor;
  final void Function(String) callback;

  const Botao({
    super.key,
    required this.texto,
    this.duplo = false,
    this.cor = corPadrao,
    required this.callback,
  });

  const Botao.operacao({
    super.key,
    required this.texto,
    this.duplo = false,
    this.cor = corOperacao,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    bool isNumber = int.tryParse(texto) != null || texto == ".";

    return Expanded(
      flex: duplo ? 2 : 1,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          // color: Colors.black,
          child: CupertinoButton(
            color: cor,
            padding: EdgeInsets.zero,
            onPressed: () => callback(texto),
            child: Center(
              child: Text(
                texto,
                textAlign: TextAlign.center, // Center text within the button
                style: TextStyle(
                  color: isNumber ? Colors.black : Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
