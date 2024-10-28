import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Botao extends StatelessWidget {
  static const corPadrao = Color.fromRGBO(112, 112, 112, 1);
  static const corOperacao = Color.fromRGBO(156, 220, 254,
      1);
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
    return Expanded(
        flex: duplo ? 2 : 1,
        child: CupertinoButton(
            color: cor,
            onPressed: () => callback(texto),
            child: Text(
              texto,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w100,
              ),
            )));
  }
}