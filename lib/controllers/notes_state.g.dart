// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotesStateImpl _$$NotesStateImplFromJson(Map<String, dynamic> json) =>
    _$NotesStateImpl(
      notesList: (json['notesList'] as List<dynamic>?)
              ?.map((e) => Note.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$NotesStateImplToJson(_$NotesStateImpl instance) =>
    <String, dynamic>{
      'notesList': instance.notesList,
    };
