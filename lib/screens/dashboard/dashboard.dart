import 'package:bytebank/screens/dashboard/saldo.dart';
import 'package:bytebank/screens/deposito/formulario.dart';
import 'package:bytebank/screens/transferencia/formulario.dart';
import 'package:bytebank/screens/transferencia/ultimas.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bytebank'),
      ),
      body: ListView(children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: SaldoCard(),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget> [
            RaisedButton(
              child: Text('Receber depósito'),
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) {
                    return FormularioDeposito();
                  })
                );
              },
            ),
            RaisedButton(
              color: Colors.green,
              child: Text('Nova transferência'),
              onPressed: () {
                Navigator.push( 
                  context, 
                  MaterialPageRoute(builder: (context) {
                    return FormularioTransferencia();
                  } ),
                );
              }, 
            )
          ]
        ),
        UltimasTransferencias()
      ])
    );
  }
}