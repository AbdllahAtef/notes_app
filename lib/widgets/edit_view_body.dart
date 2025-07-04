import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40, left: 24, right: 24),
      child: Column(
        children: [
          CustomAppBar(icon: Icons.check, title: 'Edit Note'),
          SizedBox(height: 32),
          CustomTextField(hint: 'Title', maxLines: 1),
          SizedBox(height: 16),
          CustomTextField(hint: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
