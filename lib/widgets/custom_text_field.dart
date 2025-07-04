import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kprimarycolor,
      decoration: InputDecoration(
        enabledBorder: outlineinputborder(),
        focusedBorder: outlineinputborder(kprimarycolor),
        hintText: hint,
      ),
    );
  }

  OutlineInputBorder outlineinputborder([color]) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
