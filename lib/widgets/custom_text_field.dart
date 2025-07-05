import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
   const CustomTextField({super.key, required this.hint, this.maxLines = 1, this.onsaved, this.onchanged});
  final String hint;
  final int maxLines;
 final void Function(String?)? onsaved;  
 final void Function(String?)? onchanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onchanged ,
      onSaved: onsaved,
      validator: (value) => value == null || value.isEmpty ? 'Enter $hint' : null,
      maxLines: maxLines,
      cursorColor: kprimarycolor,
      decoration: InputDecoration(
        enabledBorder: outlineinputborder(),
        focusedBorder: outlineinputborder(kprimarycolor),
        errorBorder: outlineinputborder(),
        focusedErrorBorder: outlineinputborder(),
        border: outlineinputborder(),
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
