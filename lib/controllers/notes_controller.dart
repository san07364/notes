import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import '../models/note/note.dart';
import 'notes_state.dart';

/// A [HydratedCubit] implementation to manage the state of a list of notes.
///
/// The state is persisted using [HydratedCubit], allowing the notes list to
/// survive app restarts.
class NotesCubit extends HydratedCubit<NotesState> {
  NotesCubit()
      : super(
          NotesState(),
        );

  /// Adds a new note to the list.
  void addNote({required Note note}) async {
    emit(
      state.copyWith(
        notesList: [note, ...state.notesList],
      ),
    );
  }

  /// Edits an existing note in the list.
  void editNote({required Note note}) async {
    var oldNotes = [...state.notesList];
    final index = oldNotes.indexWhere((element) => element.id == note.id);
    if (index != -1) {
      oldNotes[index] = note;
      emit(
        state.copyWith(notesList: oldNotes),
      );
    }
  }

  /// Deletes a note from the list.
  void deleteNote({required Note note}) async {
    var oldNotes = [...state.notesList];
    oldNotes.removeWhere(
      (element) => element == note,
    );
    emit(
      state.copyWith(notesList: oldNotes),
    );
  }

  void saveNotesToCloud(NotesState state) {
    // Save the notes to cloud
  }

  /// Restores the [NotesState] from a JSON object.
  @override
  NotesState? fromJson(Map<String, dynamic> json) => NotesState.fromJson(json);

  /// Serializes the current [NotesState] into a JSON object.
  @override
  Map<String, dynamic>? toJson(NotesState state) {
    compute(saveNotesToCloud, state);
    return state.toJson();
  }
}
