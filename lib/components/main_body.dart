import 'dart:ui';
import 'package:color_code_converter/components/color_quote.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:color_code_converter/components/converter_ui.dart';
import 'package:color_code_converter/components/mobile_view.dart';
import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 852) {
          return const MobileView();
        } else {
          return Container(
            height: 800,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "assets/images/fakurian-design-E8Ufcyxz514-unsplash.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                // const SizedBox(height: 20),
                // Text(
                //   "Color Code++",
                //   style: GoogleFonts.josefinSans(
                //     fontWeight: FontWeight.bold,
                //     color: Colors.white,
                //     fontSize: 30,
                //     letterSpacing: 1.5,
                //   ),
                // ),
                AppBar(
                  centerTitle: true,
                  title: Text(
                    "Color Code++",
                    style: GoogleFonts.josefinSans(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30,
                      letterSpacing: 1.5,
                    ),
                  ),
                  backgroundColor: Colors.white,
                  elevation: 0.0,
                ),
                const SizedBox(height: 50),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 30,
                          spreadRadius: 20,
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 6,
                          sigmaY: 6,
                        ),
                        child: Container(
                          width: _size.width * 0.8,
                          height: 500,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.2),
                            ),
                            gradient: LinearGradient(
                              colors: [
                                Colors.white.withOpacity(0.3),
                                Colors.white.withOpacity(0.08)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: const [
                                      ColorQuote(),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      ConverterUI(),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
