// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget numbButton(String btnText, Color btnColor, Color txtColor) {
    return ElevatedButton(
      onPressed: () => {},
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(70, 70),
        backgroundColor: btnColor,
        shape: const CircleBorder(),
      ),
      child: Text(
        btnText,
        style: TextStyle(fontSize: 25, color: txtColor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.black,
      ),
    );
  }
}
