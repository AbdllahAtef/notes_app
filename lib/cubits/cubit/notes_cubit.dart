import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchallnotes(){
    try {
      var notesbox = Hive.box<NoteModel>(kNotesBox);


      emit(NotesSuccess(notesbox.values.toList()));
    } catch (e) {

     emit( NotesFailure( e.toString()));
      // TODO
    }

  }
}
