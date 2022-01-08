import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorQuote extends StatelessWidget {
  const ColorQuote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "Colors",
          style: GoogleFonts.comfortaa(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Make",
          style: GoogleFonts.poppins(
            fontSize: 30,
          ),
        ),
        Text(
          "All the",
          style: GoogleFonts.poppins(
            fontSize: 30,
          ),
        ),
        Text(
          "Difference.",
          style: GoogleFonts.dancingScript(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        // RichText(
        //   text: TextSpan(
        //     children: [
        //       // TextSpan(
        //       //   text: "Colors\n",
        //       //   style: GoogleFonts.comfortaa(
        //       //     fontSize: 50,
        //       //     fontWeight: FontWeight.bold,
        //       //   ),
        //       // ),
        //       // TextSpan(
        //       //   text: "Make\nAll the\n",
        //       //   style: GoogleFonts.poppins(
        //       //     fontSize: 30,
        //       //   ),
        //       // ),
        //       // TextSpan(
        //       //   text: "Difference.\n",
        //       //   style: GoogleFonts.dancingScript(
        //       //     fontSize: 50,
        //       //     fontWeight: FontWeight.bold,
        //       //   ),
        //       // ),
        //     ],
        //   ),
        // )
      ],
    );
  }
}
