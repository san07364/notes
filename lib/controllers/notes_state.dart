import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes/models/note/note.dart';

part 'notes_state.freezed.dart';
part 'notes_state.g.dart';

@freezed
class NotesState with _$NotesState {
  factory NotesState({
    @Default([]) List<Note> notesList,
  }) = _NotesState;

  factory NotesState.fromJson(Map<String, dynamic> json) =>
      _$NotesStateFromJson(json);
}
