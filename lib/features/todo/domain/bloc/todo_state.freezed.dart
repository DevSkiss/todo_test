// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;
  bool get isPriority => throw _privateConstructorUsedError;
  List<TodoModelDto>? get completedTodos => throw _privateConstructorUsedError;
  List<TodoModelDto>? get notCompletedTodos =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isFinished,
      bool isPriority,
      List<TodoModelDto>? completedTodos,
      List<TodoModelDto>? notCompletedTodos});
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res> implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  final TodoState _value;
  // ignore: unused_field
  final $Res Function(TodoState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? isFinished = freezed,
    Object? isPriority = freezed,
    Object? completedTodos = freezed,
    Object? notCompletedTodos = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinished: isFinished == freezed
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      isPriority: isPriority == freezed
          ? _value.isPriority
          : isPriority // ignore: cast_nullable_to_non_nullable
              as bool,
      completedTodos: completedTodos == freezed
          ? _value.completedTodos
          : completedTodos // ignore: cast_nullable_to_non_nullable
              as List<TodoModelDto>?,
      notCompletedTodos: notCompletedTodos == freezed
          ? _value.notCompletedTodos
          : notCompletedTodos // ignore: cast_nullable_to_non_nullable
              as List<TodoModelDto>?,
    ));
  }
}

/// @nodoc
abstract class _$$_TodoStateCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$$_TodoStateCopyWith(
          _$_TodoState value, $Res Function(_$_TodoState) then) =
      __$$_TodoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasError,
      bool isFinished,
      bool isPriority,
      List<TodoModelDto>? completedTodos,
      List<TodoModelDto>? notCompletedTodos});
}

/// @nodoc
class __$$_TodoStateCopyWithImpl<$Res> extends _$TodoStateCopyWithImpl<$Res>
    implements _$$_TodoStateCopyWith<$Res> {
  __$$_TodoStateCopyWithImpl(
      _$_TodoState _value, $Res Function(_$_TodoState) _then)
      : super(_value, (v) => _then(v as _$_TodoState));

  @override
  _$_TodoState get _value => super._value as _$_TodoState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? isFinished = freezed,
    Object? isPriority = freezed,
    Object? completedTodos = freezed,
    Object? notCompletedTodos = freezed,
  }) {
    return _then(_$_TodoState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinished: isFinished == freezed
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      isPriority: isPriority == freezed
          ? _value.isPriority
          : isPriority // ignore: cast_nullable_to_non_nullable
              as bool,
      completedTodos: completedTodos == freezed
          ? _value._completedTodos
          : completedTodos // ignore: cast_nullable_to_non_nullable
              as List<TodoModelDto>?,
      notCompletedTodos: notCompletedTodos == freezed
          ? _value._notCompletedTodos
          : notCompletedTodos // ignore: cast_nullable_to_non_nullable
              as List<TodoModelDto>?,
    ));
  }
}

/// @nodoc

class _$_TodoState implements _TodoState {
  _$_TodoState(
      {this.isLoading = false,
      this.hasError = false,
      this.isFinished = false,
      this.isPriority = false,
      final List<TodoModelDto>? completedTodos,
      final List<TodoModelDto>? notCompletedTodos})
      : _completedTodos = completedTodos,
        _notCompletedTodos = notCompletedTodos;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasError;
  @override
  @JsonKey()
  final bool isFinished;
  @override
  @JsonKey()
  final bool isPriority;
  final List<TodoModelDto>? _completedTodos;
  @override
  List<TodoModelDto>? get completedTodos {
    final value = _completedTodos;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TodoModelDto>? _notCompletedTodos;
  @override
  List<TodoModelDto>? get notCompletedTodos {
    final value = _notCompletedTodos;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TodoState(isLoading: $isLoading, hasError: $hasError, isFinished: $isFinished, isPriority: $isPriority, completedTodos: $completedTodos, notCompletedTodos: $notCompletedTodos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality()
                .equals(other.isFinished, isFinished) &&
            const DeepCollectionEquality()
                .equals(other.isPriority, isPriority) &&
            const DeepCollectionEquality()
                .equals(other._completedTodos, _completedTodos) &&
            const DeepCollectionEquality()
                .equals(other._notCompletedTodos, _notCompletedTodos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(isFinished),
      const DeepCollectionEquality().hash(isPriority),
      const DeepCollectionEquality().hash(_completedTodos),
      const DeepCollectionEquality().hash(_notCompletedTodos));

  @JsonKey(ignore: true)
  @override
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      __$$_TodoStateCopyWithImpl<_$_TodoState>(this, _$identity);
}

abstract class _TodoState implements TodoState {
  factory _TodoState(
      {final bool isLoading,
      final bool hasError,
      final bool isFinished,
      final bool isPriority,
      final List<TodoModelDto>? completedTodos,
      final List<TodoModelDto>? notCompletedTodos}) = _$_TodoState;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isFinished;
  @override
  bool get isPriority;
  @override
  List<TodoModelDto>? get completedTodos;
  @override
  List<TodoModelDto>? get notCompletedTodos;
  @override
  @JsonKey(ignore: true)
  _$$_TodoStateCopyWith<_$_TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}
