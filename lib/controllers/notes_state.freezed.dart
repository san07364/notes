// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotesState _$NotesStateFromJson(Map<String, dynamic> json) {
  return _NotesState.fromJson(json);
}

/// @nodoc
mixin _$NotesState {
  List<Note> get notesList => throw _privateConstructorUsedError;

  /// Serializes this NotesState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotesStateCopyWith<NotesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesStateCopyWith<$Res> {
  factory $NotesStateCopyWith(
          NotesState value, $Res Function(NotesState) then) =
      _$NotesStateCopyWithImpl<$Res, NotesState>;
  @useResult
  $Res call({List<Note> notesList});
}

/// @nodoc
class _$NotesStateCopyWithImpl<$Res, $Val extends NotesState>
    implements $NotesStateCopyWith<$Res> {
  _$NotesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notesList = null,
  }) {
    return _then(_value.copyWith(
      notesList: null == notesList
          ? _value.notesList
          : notesList // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotesStateImplCopyWith<$Res>
    implements $NotesStateCopyWith<$Res> {
  factory _$$NotesStateImplCopyWith(
          _$NotesStateImpl value, $Res Function(_$NotesStateImpl) then) =
      __$$NotesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Note> notesList});
}

/// @nodoc
class __$$NotesStateImplCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res, _$NotesStateImpl>
    implements _$$NotesStateImplCopyWith<$Res> {
  __$$NotesStateImplCopyWithImpl(
      _$NotesStateImpl _value, $Res Function(_$NotesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notesList = null,
  }) {
    return _then(_$NotesStateImpl(
      notesList: null == notesList
          ? _value._notesList
          : notesList // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotesStateImpl implements _NotesState {
  _$NotesStateImpl({final List<Note> notesList = const []})
      : _notesList = notesList;

  factory _$NotesStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotesStateImplFromJson(json);

  final List<Note> _notesList;
  @override
  @JsonKey()
  List<Note> get notesList {
    if (_notesList is EqualUnmodifiableListView) return _notesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notesList);
  }

  @override
  String toString() {
    return 'NotesState(notesList: $notesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._notesList, _notesList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_notesList));

  /// Create a copy of NotesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesStateImplCopyWith<_$NotesStateImpl> get copyWith =>
      __$$NotesStateImplCopyWithImpl<_$NotesStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotesStateImplToJson(
      this,
    );
  }
}

abstract class _NotesState implements NotesState {
  factory _NotesState({final List<Note> notesList}) = _$NotesStateImpl;

  factory _NotesState.fromJson(Map<String, dynamic> json) =
      _$NotesStateImpl.fromJson;

  @override
  List<Note> get notesList;

  /// Create a copy of NotesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotesStateImplCopyWith<_$NotesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
