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
      onPressed: () => {calculate(btnText)},
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
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    text,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 80,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numbButton("C", Colors.grey, Colors.black),
                numbButton("+/-", Colors.grey, Colors.black),
                numbButton("%", Colors.grey, Colors.black),
                numbButton("/", Colors.orange, Colors.white),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numbButton("7", (Colors.grey[850])!, Colors.white),
                numbButton("8", (Colors.grey[850])!, Colors.white),
                numbButton("9", (Colors.grey[850])!, Colors.white),
                numbButton("x", Colors.orange, Colors.white),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numbButton("4", (Colors.grey[850])!, Colors.white),
                numbButton("5", (Colors.grey[850])!, Colors.white),
                numbButton("6", (Colors.grey[850])!, Colors.white),
                numbButton("-", Colors.orange, Colors.white),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numbButton("1", (Colors.grey[850])!, Colors.white),
                numbButton("2", (Colors.grey[850])!, Colors.white),
                numbButton("3", (Colors.grey[850])!, Colors.white),
                numbButton("+", Colors.orange, Colors.white),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: ((Colors.grey[850])!),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(28, 12, 90, 12),
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                numbButton(".", (Colors.grey[850])!, Colors.white),
                numbButton("=", Colors.orange, Colors.white)
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  // Calculator Login
  int firstNum = 0;
  int secondNum = 0;
  String result = "";
  String text = "";
  String operation = "";

  void calculate(String btnText) {
    if (btnText == "C") {
      result = "";
      text = "";
      firstNum = 0;
      secondNum = 0;
    } else if (btnText == "+" ||
        btnText == "-" ||
        btnText == "x" ||
        btnText == "/") {
      firstNum = int.parse(text);
      result = "";
      operation = btnText;
    } else if (btnText == "=") {
      secondNum = int.parse(text);
      switch (operation) {
        case "+":
          result = (firstNum + secondNum).toString();
          break;

        case "-":
          result = (firstNum - secondNum).toString();
          break;

        case "X":
          result = (firstNum * secondNum).toString();
          break;

        case "/":
          result = (firstNum / secondNum).toString();
          break;
        default:
      }
    } else {
      result = int.parse(text + btnText).toString();
    }

    setState(() {
      text = result;
    });
  }
}
