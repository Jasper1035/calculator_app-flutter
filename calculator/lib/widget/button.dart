import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttonscal extends StatelessWidget {
  const Buttonscal({
    super.key,
    required this.text,
    this.backgroundColor = Colors.black54,

    //required this.callback
  });

  final String text;
  final Color backgroundColor;
  // final Function callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: SizedBox(
        width: 70,
        height: 70,

        child: FloatingActionButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          backgroundColor: backgroundColor,
          onPressed: () {},
          child: Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
