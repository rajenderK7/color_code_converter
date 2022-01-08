import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class ColorPreview extends StatelessWidget {
  final int colorValue;
  const ColorPreview({Key? key, required this.colorValue}) : super(key: key);
  // final col = Color.fromRGBO(255, 120, 175, 1);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Color Preview",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
        Container(
          width: 100,
          height: 50,
          color: Color(colorValue),
        ),
      ],
    );
  }
}
