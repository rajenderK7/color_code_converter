import 'package:color_code_converter/widgets/color_preview.dart';
import 'package:color_code_converter/widgets/text_input.dart';
import 'package:google_fonts/google_fonts.dart';
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

  bool canCopy = false;

  int colval = -1;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: _size.width * 0.5,
        height: _size.height * 0.7,
        color: Colors.transparent,
        child: Center(
          child: Column(
            children: [
              _size.width > 852
                  ? ColorInput(
                      labelText: "RGB",
                      hintText: "eg: 255, 120, 175",
                      controller: _rgbController,
                      hintFontSize: 15,
                      canCopy: canCopy,
                    )
                  : ColorInput(
                      labelText: "RGB",
                      hintText: "eg: 255, 120, 175",
                      controller: _rgbController,
                      hintFontSize: 12,
                      canCopy: canCopy,
                    ),
              _size.width > 852
                  ? ColorInput(
                      labelText: "HEX",
                      hintText: "eg: #FF78AF",
                      controller: _hexController,
                      hintFontSize: 15,
                      canCopy: canCopy,
                    )
                  : ColorInput(
                      labelText: "HEX",
                      hintText: "eg: #FF78AF",
                      controller: _hexController,
                      hintFontSize: 12,
                      canCopy: canCopy,
                    ),
              _size.width > 852
                  ? ColorInput(
                      labelText: "CMYK",
                      hintText: "eg: 0, 53, 31, 0",
                      controller: _cmykController,
                      hintFontSize: 15,
                      canCopy: canCopy,
                    )
                  : ColorInput(
                      labelText: "CMYK",
                      hintText: "eg: 0, 53, 31, 0",
                      controller: _cmykController,
                      hintFontSize: 12,
                      canCopy: canCopy,
                    ),
              const SizedBox(
                height: 20,
              ),
              _size.width > 852
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
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
                            updateColorPreview();
                          },
                          child: Text(
                            "Convert",
                            style: GoogleFonts.lato(),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {
                            _rgbController.value = TextEditingValue.empty;
                            _hexController.value = TextEditingValue.empty;
                            _cmykController.value = TextEditingValue.empty;
                            updateColorPreview();
                          },
                          child: Text(
                            "Clear",
                            style: GoogleFonts.lato(),
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
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
                            updateColorPreview();
                          },
                          child: Text(
                            "Convert",
                            style: GoogleFonts.lato(),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {
                            _rgbController.value = TextEditingValue.empty;
                            _hexController.value = TextEditingValue.empty;
                            _cmykController.value = TextEditingValue.empty;

                            updateColorPreview();
                          },
                          child: Text(
                            "Clear",
                            style: GoogleFonts.lato(),
                          ),
                        ),
                      ],
                    ),
              const SizedBox(
                height: 10,
              ),
              ColorPreview(
                colorValue: colval,
              ),
            ],
          ),
        ),
      ),
    );
  }

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

  void updateColorPreview() {
    String currentColor = _hexController.value.text;
    if (currentColor == "") {
      setState(() {
        colval = -1;
        canCopy = !canCopy;
      });
      return;
    }
    currentColor = currentColor.replaceAll("#", "ff");
    int currentColVal = int.parse(currentColor, radix: 16);
    setState(() {
      colval = currentColVal;
      canCopy = !canCopy;
    });
    FocusScope.of(context).unfocus();
  }
}
