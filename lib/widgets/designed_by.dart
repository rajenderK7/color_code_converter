import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesignedBy extends StatelessWidget {
  const DesignedBy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Designed by - ",
                style: GoogleFonts.poppins(fontSize: 12, color: Colors.black),
              ),
              TextSpan(
                text: "Rajender",
                style: GoogleFonts.comfortaa(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
