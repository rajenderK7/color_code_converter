import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class ColorPreview extends StatelessWidget {
  final int colorValue;
  const ColorPreview({Key? key, required this.colorValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Color Preview",
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: 200,
          height: 50,
          color: colorValue == -1 ? Colors.transparent : Color(colorValue),
          // child: colorValue == -1
          //     ? const Center(child: Text("No preview available yet."))
          //     : null,
        ),
      ],
    );
  }
}
