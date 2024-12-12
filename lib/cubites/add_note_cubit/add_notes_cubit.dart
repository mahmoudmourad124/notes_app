import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  bool isLoading = false;
  addNote(NoteModel note) async {
    isLoading = true;
    emit(AddNotesLoading());

    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNotesSuccess());
      isLoading = true;
    } catch (e) {
      isLoading = false;
      emit(AddNotesFailure(e.toString()));
    }
  }
}
