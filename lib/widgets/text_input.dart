import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorInput extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  const ColorInput(
      {Key? key,
      required this.labelText,
      required this.hintText,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 1.0),
            child: Text(
              labelText,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              hintText: hintText,
            ),
            controller: controller,
          ),
        ],
      ),
    );
  }
}
