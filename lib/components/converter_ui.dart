import 'package:color_code_converter/widgets/text_input.dart';
import 'package:flutter/material.dart';

class ConverterUI extends StatelessWidget {
  const ConverterUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _hexController = TextEditingController();
    final _rgbController = TextEditingController();
    final _cmykController = TextEditingController();

    // _hexController.text = "rajender";

    Size _size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: _size.width * 0.5,
        height: _size.height * 0.6,
        color: Colors.white,
        child: Column(
          children: [
            ColorInput(
              labelText: "RGB",
              hintText: "r,g,b",
              controller: _rgbController,
            ),
            ColorInput(
              labelText: "HEX",
              hintText: "ffbcff",
              controller: _hexController,
            ),
            ColorInput(
              labelText: "CMYK",
              hintText: "c,m,y,k",
              controller: _cmykController,
            ),
          ],
        ),
      ),
    );
  }
}
