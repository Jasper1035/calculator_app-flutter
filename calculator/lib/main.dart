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
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Divider(thickness: 2, color: Colors.white),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttonscal(text: 'AC', backgroundColor: Colors.black),
                  Buttonscal(text: 'C', backgroundColor: Colors.black),
                  Buttonscal(text: '%', backgroundColor: Colors.black),
                  Buttonscal(text: '÷', backgroundColor: Colors.black),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttonscal(text: '9'),
                  Buttonscal(text: '8'),
                  Buttonscal(text: '9'),
                  Buttonscal(text: 'x', backgroundColor: Colors.black),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttonscal(text: '4'),
                  Buttonscal(text: '5'),
                  Buttonscal(text: '6'),
                  Buttonscal(text: '-', backgroundColor: Colors.black),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttonscal(text: '1'),
                  Buttonscal(text: '2'),
                  Buttonscal(text: '3'),
                  Buttonscal(text: '+', backgroundColor: Colors.black),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttonscal(text: '+/-'),
                  Buttonscal(text: '0'),
                  Buttonscal(text: '.'),
                  Buttonscal(text: '=', backgroundColor: Colors.black),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
