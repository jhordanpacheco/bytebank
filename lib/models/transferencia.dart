class Transferencia {

  final double valor;
  final int numerConta;

  Transferencia(
    this.valor, 
    this.numerConta
  );

  String toStringValor() {
    return 'R\$ $valor';
  }

  String toStringConta() {
    return 'Conta: $numerConta';
  }
  
}