// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onsaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(height: 32),
          CustomTextField(
            onsaved: (value) {
              content = value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(height: 82),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomButton(
                isloading: state is AddNotesLoading ? true : false,
                ontap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    // ignore: non_constant_identifier_names
                    var Notemodel = NoteModel(
                      title: title!,
                      subtitle: content!,
                      createdAt: DateTime.now().toString(),
                      color: Colors.blueAccent.value,
                    );
                    BlocProvider.of<AddNotesCubit>(context).addNote(Notemodel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
