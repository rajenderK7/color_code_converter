import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorQuoteMobile extends StatelessWidget {
  const ColorQuoteMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Colors ",
              style: GoogleFonts.comfortaa(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            TextSpan(
              text: "Make All\n",
              style: GoogleFonts.poppins(fontSize: 10, color: Colors.black),
            ),
            TextSpan(
              text: "the ",
              style: GoogleFonts.poppins(fontSize: 10, color: Colors.black),
            ),
            TextSpan(
              text: "Difference",
              style: GoogleFonts.dancingScript(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}


// TextSpan(
//             text: "C",
//             style: GoogleFonts.comfortaa(
//                 fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue),
//           ),
//           TextSpan(
//             text: "o",
//             style: GoogleFonts.comfortaa(
//                 fontSize: 25, fontWeight: FontWeight.bold, color: Colors.green),
//           ),
//           TextSpan(
//             text: "l",
//             style: GoogleFonts.comfortaa(
//                 fontSize: 25, fontWeight: FontWeight.bold, color: Colors.amber),
//           ),
//           TextSpan(
//             text: "o",
//             style: GoogleFonts.comfortaa(
//                 fontSize: 25,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.purple),
//           ),
//           TextSpan(
//             text: "r",
//             style: GoogleFonts.comfortaa(
//                 fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),
//           ),
//           TextSpan(
//             text: "s ",
//             style: GoogleFonts.comfortaa(
//                 fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
//           ),

// Row(
//       children: [
//         Text(
//           "Colors",
//           style: GoogleFonts.comfortaa(
//             fontSize: 30,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         Text(
//           "Make",
//           style: GoogleFonts.poppins(
//             fontSize: 20,
//           ),
//         ),
//         Text(
//           "All the",
//           style: GoogleFonts.poppins(
//             fontSize: 20,
//           ),
//         ),
//         Text(
//           "Difference.",
//           style: GoogleFonts.dancingScript(
//             fontSize: 30,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ],
//     );