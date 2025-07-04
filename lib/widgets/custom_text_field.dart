import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimarycolor,
      decoration: InputDecoration(
        enabledBorder: outlineinputborder(),
        focusedBorder: outlineinputborder(kprimarycolor),
        hintText: 'Title',
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
