import 'package:color_code_converter/widgets/color_preview.dart';
import 'package:color_code_converter/widgets/text_input.dart';
import 'package:color_converter/color_converter.dart';
import 'package:flutter/material.dart';

class ConverterUI extends StatefulWidget {
  const ConverterUI({Key? key}) : super(key: key);

  @override
  State<ConverterUI> createState() => _ConverterUIState();
}

class _ConverterUIState extends State<ConverterUI> {
  final _hexController = TextEditingController();
  final _rgbController = TextEditingController();
  final _cmykController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    int colval = 7270112459;

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
              hintText: "eg: 255, 120, 175",
              controller: _rgbController,
            ),
            ColorInput(
              labelText: "HEX",
              hintText: "eg: #7FFFD4",
              controller: _hexController,
            ),
            ColorInput(
              labelText: "CMYK",
              hintText: "eg: 10, 55, 30, 0",
              controller: _cmykController,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (_rgbController.value.text.isEmpty &&
                    _cmykController.value.text.isEmpty) {
                  convertInputHEX();
                }
                if (_hexController.value.text.isEmpty &&
                    _cmykController.value.text.isEmpty) {
                  convertInputRGB();
                }
                if (_rgbController.value.text.isEmpty &&
                    _hexController.value.text.isEmpty) {
                  convertInputCMYK();
                } else {
                  convertInputRGB();
                }

                // check();
                // int temp = convertColor("s");
                // setState(() {
                //   colval = temp;
                // });
              },
              child: const Text("Convert"),
            ),
            const SizedBox(
              height: 30,
            ),
            ColorPreview(
              colorValue: colval,
            ),
          ],
        ),
      ),
    );
  }

  // int convertColor(String s) {
  //   Color pickerColor = const Color(0xff7FFFD4);
  //   int testingColorValue = pickerColor.value;
  //   print(testingColorValue);
  //   // String testingColorString = pickerColor.toString();

  //   // Color newColor = Color(testingColorValue);
  //   return testingColorValue;
  // }
  // void check() {
  //   //   // print(s);
  //   int r = 234, g = 112, b = 45;
  //   RGB rgbColor = RGB(r: r, g: g, b: b);
  //   // RGB rgbColor = RGB(r: 234, g: 112, b: 45);

  //   //   HSL hslColor = rgbColor.toHsl();
  //   CMYK cmykColor = rgbColor.toCmyk();
  //   //   Color hex = const Color.fromRGBO(66, 165, 245, 1.0);

  //   //   // print(hex.green.toString());
  //   //   // print(hslColor.h);
  //   print(cmykColor);

  //   //   // print(rgbColor == hslColor);
  // }

  // void conversionHandler() {
  //   // Handling RGB input and making an object of RGB.
  //   int r, g, b;
  //   String rgbInput = _rgbController.value.text;
  //   rgbInput = rgbInput.replaceAll(" ", "");
  //   var rgbInputValues =
  //       rgbInput.split(","); // This list contains => [R, G, B] (ALL ARE STINGS)
  //   // if (rgbInputValues.length > 3) return;
  //   r = int.parse(rgbInputValues[0]);
  //   g = int.parse(rgbInputValues[1]);
  //   b = int.parse(rgbInputValues[2]);
  //   RGB _rgbColor = RGB(r: r, g: g, b: b);
  //   // Making CMYK color of the current RGB color
  //   CMYK _cmykColor = _rgbColor.toCmyk();
  //   // Making HSL color of the current RGB color
  //   HSL _hslColor = _rgbColor.toHsl();
  //   String _hexColor = _rgbColor.toHex();
  //   print(_rgbColor);
  //   print(_hexColor);
  //   print(_cmykColor);
  //   print(_hslColor);

  //   // FROM HEX to RGB
  //   String hexColor = "#00ff00";
  //   Color s = const Color(0xff00ff00);

  //   print("RAJENDER ${RGB.fromHex(hexColor).toString()}");
  //   print(CMYK.fromHex(hexColor));
  //   print(HSL.fromHex(hexColor));
  // }

  void convertInputRGB() {
    int r, g, b;
    String rgbInput = _rgbController.value.text;
    rgbInput = rgbInput.replaceAll(" ", "");
    var rgbInputValues =
        rgbInput.split(","); // This list contains => [R, G, B] (ALL ARE STINGS)
    // if (rgbInputValues.length > 3) return;
    r = int.parse(rgbInputValues[0]);
    g = int.parse(rgbInputValues[1]);
    b = int.parse(rgbInputValues[2]);
    RGB _rgbColor = RGB(r: r, g: g, b: b);

    // Converting to HEX, CMYK from RGB
    String _hexOutput = _rgbColor.toHex();
    CMYK _cmykColor = _rgbColor.toCmyk();
    final String _cmykOutput =
        "${_cmykColor.c}, ${_cmykColor.m}, ${_cmykColor.y}, ${_cmykColor.k}";
    _cmykController.value = TextEditingValue(text: _cmykOutput);
    _hexController.value = TextEditingValue(text: _hexOutput);
  }

  void convertInputHEX() {
    String hexColor = _hexController.value.text;
    final String _rgbOutput = RGB.fromHex(hexColor).toString();
    final String _cmykOutput = CMYK.fromHex(hexColor).toString();
    _rgbController.value = TextEditingValue(text: _rgbOutput);
    _cmykController.value = TextEditingValue(text: _cmykOutput);
    // print(RGB.fromHex(hexColor));
    // print(CMYK.fromHex(hexColor));
    // print(HSL.fromHex(hexColor));
  }

  void convertInputCMYK() {
    int c, m, y, k;
    String cmykInput = _cmykController.value.text;
    cmykInput = cmykInput.replaceAll(" ", "");
    var cmykInputValues = cmykInput
        .split(","); // This list contains => [C, M, Y, K] (ALL ARE STINGS)
    // if (cmykInputValues.length > 3) return;
    c = int.parse(cmykInputValues[0]);
    m = int.parse(cmykInputValues[1]);
    y = int.parse(cmykInputValues[2]);
    k = int.parse(cmykInputValues[3]);

    CMYK _cmykColor = CMYK(c: c, m: m, y: y, k: k);

    // Converting to RGB, HEX from CMYK
    String _hexOutput = _cmykColor.toHex();
    RGB _rgbColor = _cmykColor.toRgb();
    final String _rgbOutput = "${_rgbColor.r}, ${_rgbColor.g}, ${_rgbColor.b}";
    _rgbController.value = TextEditingValue(text: _rgbOutput);
    _hexController.value = TextEditingValue(text: _hexOutput);
  }
}


// 255, 20, 45