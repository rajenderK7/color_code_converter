import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorInput extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool canCopy;
  final TextEditingController controller;
  const ColorInput({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    required this.canCopy,
  }) : super(key: key);

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
              style: GoogleFonts.lato(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 5,
                child: TextField(
                  enableInteractiveSelection: true,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: hintText,
                  ),
                  controller: controller,
                  maxLines: 1,
                ),
              ),
              IconButton(
                onPressed: () {
                  canCopy
                      ? Clipboard.setData(
                          ClipboardData(text: controller.value.text))
                      : null;
                },
                icon: Icon(
                  Icons.copy,
                  size: 20,
                  color: canCopy ? Colors.black : Colors.black45,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
