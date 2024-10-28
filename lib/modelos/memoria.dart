class Memoria {
  String _valor = '0';
  void tratarDigito(String comando) {
    _valor += comando;
  }
  String get valor {
    return _valor;
  }
}