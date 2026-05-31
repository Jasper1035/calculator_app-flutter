import 'package:calculator/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  int? firstNum;
  int? secondNum;
  String history = '';
  String textToDisplay = '';
  String? res;
  String? operation;

  void btnOnClick(String btnval) {
    print(btnval);
    if (btnval == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnval == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnval == '+/-') {
      if (textToDisplay[0] != '-') {
        res = '-$textToDisplay';
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnval == '←') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnval == '+' ||
        btnval == '-' ||
        btnval == 'x' ||
        btnval == '÷') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnval;
    } else if (btnval == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum! + secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum! - secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'x') {
        res = (firstNum! * secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '÷') {
        res = (firstNum! / secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnval).toString();
    }

    setState(() {
      textToDisplay = res!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        appBar: AppBar(
          title: const Text('Flutter Calculator'),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: const Alignment(1, 1),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    history,
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 28,
                        color: Color.fromARGB(255, 69, 107, 125),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: const Alignment(1, 1),
                child: Padding(
                  padding: const EdgeInsets.all(12),

                  child: Text(
                    textToDisplay,
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              const Divider(thickness: 2, color: Colors.white),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttonscal(
                    text: 'AC',
                    backgroundColor: Colors.black,
                    callback: btnOnClick,
                  ),
                  Buttonscal(
                    text: 'C',
                    backgroundColor: Colors.black,
                    callback: btnOnClick,
                  ),
                  Buttonscal(
                    text: '←',
                    backgroundColor: Colors.black,
                    callback: btnOnClick,
                  ),
                  Buttonscal(
                    text: '÷',
                    backgroundColor: Colors.black,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttonscal(text: '9', callback: btnOnClick),
                  Buttonscal(text: '8', callback: btnOnClick),
                  Buttonscal(text: '9', callback: btnOnClick),
                  Buttonscal(
                    text: 'x',
                    backgroundColor: Colors.black,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttonscal(text: '4', callback: btnOnClick),
                  Buttonscal(text: '5', callback: btnOnClick),
                  Buttonscal(text: '6', callback: btnOnClick),
                  Buttonscal(
                    text: '-',
                    backgroundColor: Colors.black,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttonscal(text: '1', callback: btnOnClick),
                  Buttonscal(text: '2', callback: btnOnClick),
                  Buttonscal(text: '3', callback: btnOnClick),
                  Buttonscal(
                    text: '+',
                    backgroundColor: Colors.black,
                    callback: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttonscal(text: '+/-', callback: btnOnClick),
                  Buttonscal(text: '0', callback: btnOnClick),
                  Buttonscal(text: '.', callback: btnOnClick),
                  Buttonscal(
                    text: '=',
                    backgroundColor: Colors.black,
                    callback: btnOnClick,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
