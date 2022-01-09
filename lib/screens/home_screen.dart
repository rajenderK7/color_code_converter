import 'package:color_code_converter/components/main_body.dart';
import 'package:color_code_converter/widgets/designed_by.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Padding(
      //     padding: const EdgeInsets.only(top: 10.0),
      //     child: Text(
      //       "Color Code++",
      //       style: GoogleFonts.josefinSans(
      //         fontWeight: FontWeight.bold,
      //         color: Colors.white,
      //         fontSize: 30,
      //         letterSpacing: 1.5,
      //       ),
      //     ),
      //   ),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0.0,
      // ),
      body: const MainBody(),
      bottomNavigationBar: const DesignedBy(),
    );
  }
}
