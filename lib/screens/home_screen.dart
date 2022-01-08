import 'package:color_code_converter/components/main_body.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            "Rajender",
            style: GoogleFonts.dancingScript(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 40,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        children: const [
          MainBody(),
        ],
      ),
    );
  }
}
