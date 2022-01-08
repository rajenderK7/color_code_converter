import 'dart:ui';
import 'package:color_code_converter/components/color_quote_mobile.dart';
import 'package:color_code_converter/components/converter_ui.dart';
import 'package:flutter/material.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: _size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "assets/images/fakurian-design-E8Ufcyxz514-unsplash.jpg"),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Center(
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
                width: _size.width * 0.65,
                height: _size.height * 0.8,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    ColorQuoteMobile(),
                    ConverterUI(),
                  ],
                ),
                // child: const ConverterUI(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
