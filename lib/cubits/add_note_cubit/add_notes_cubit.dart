import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:flutter/material.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  Color? color = Colors.purple;
  addNote(NoteModel note) async {
    note.color = color!.value;
    emit(AddNotesLoading());
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBox);
      await notesbox.add(note);

      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailure(errorMessage: e.toString()));
      
    }
  }
}
