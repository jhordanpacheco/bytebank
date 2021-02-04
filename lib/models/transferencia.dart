class Transferencia {

  final double valor;
  final int numerConta;

  Transferencia(
    this.valor, 
    this.numerConta
  );

  @override
  String toString() {
    return 'Transferencia{valor: $valor, numeroConta: $numerConta}';
  }
}