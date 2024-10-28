import 'package:flutter/material.dart';
import 'botao.dart';
class LinhaBotoes extends StatelessWidget {
  final List<Botao> botoes;
  const LinhaBotoes(this.botoes, {super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: botoes.fold(
              <Widget>[], (lista, elemento) {
            lista.isEmpty
                ? lista.add(elemento)
                : lista.addAll(
                [const SizedBox(width: 2), elemento]
            );
            return lista;
          }),
        ));
  }
}