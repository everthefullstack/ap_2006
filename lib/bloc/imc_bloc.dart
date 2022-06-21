import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class ImcBloc {
  double width = 300;
  double height = 80;

  var weightCtrl = MaskedTextController(mask: '000');
  var heightCtrl = MaskedTextController(mask: '000');
  var result1 = '';
  var result2 = '';

  var style1 = const TextStyle(color: Colors.black, fontSize: 25);
  var style2 = const TextStyle(color: Colors.black, fontSize: 12);

  var styleButton = TextButton.styleFrom(backgroundColor: Colors.blue);

  var coluna = Column(
    children: [
      Text('Calculate your BMI',
          style: TextStyle(color: Colors.white, fontSize: 20)),
    ],
  );

  var redirect = const Text('');

  calculaImc() {

    try {

      double peso = double.parse(weightCtrl.text);
      double altura = double.parse(heightCtrl.text) / 100;
      double imc = peso / (altura * altura);

      if (imc < 18.5) {
        result1 = imc.toStringAsPrecision(2);
        result2 = 'Underweight';
      } else if (imc > 18.5 && imc <= 24.9) {
        result1 = imc.toStringAsPrecision(2);
        result2 = 'Normal';
      } else if (imc > 25 && imc <= 29.9) {
        result1 = imc.toStringAsPrecision(2);
        result2 = 'Overweight';
      } else if (imc >= 30) {
        result1 = imc.toStringAsPrecision(2);
        result2 = 'Obesity';
      }
      width = 300;
      height = 100;
      coluna = Column(
        children: [
          Container(
            child: const Text(
              'Your BMI',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0,
                  color: Colors.black),
            ),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Text(result1, style: style1),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: Text(result2, style: style2),
          ),
        ],
      );

      styleButton = TextButton.styleFrom(backgroundColor: Colors.white);

      redirect = const Text(
        'Calculate BMI again',
        style: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 15.0, color: Colors.blue),
      );

    } catch (error) {
      width = 300;
      height = 100;
      coluna = Column(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: Text('Ocorreu um erro, refaça o cálculo.', style: style2),
          ),
        ],
      );

      styleButton = TextButton.styleFrom(backgroundColor: Colors.white);

      redirect = const Text(
        'Calculate BMI again',
        style: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 15.0, color: Colors.blue),
      );
    }
  }
}
