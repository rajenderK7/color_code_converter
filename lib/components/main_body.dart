import 'dart:ui';

import 'package:color_code_converter/components/color_quote.dart';
import 'package:color_code_converter/components/converter_ui.dart';
import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      height: 600,
      width: double.infinity,
      // color: Colors.green,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                "assets/images/fakurian-design-E8Ufcyxz514-unsplash.jpg"),
            fit: BoxFit.cover),
      ),
      child: Center(
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
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.2),
                    Colors.white.withOpacity(0.05)
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Center(
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
    );
  }
}
