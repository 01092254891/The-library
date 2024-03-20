import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../constants.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? note;
  fetchAllNotes() {
    var bookBox = Hive.box<NoteModel>(kNotesBox);

    note = bookBox.values.toList();
    emit(NotesSuccess());
  }
}
