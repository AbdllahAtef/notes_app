import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
      child: Column(children: [CustomTextField()]),
    );
  }
}
