// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_trivia_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NumberTriviaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String numberString) getTriviaForConcreteNumber,
    required TResult Function() getGetTriviaForRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String numberString)? getTriviaForConcreteNumber,
    TResult? Function()? getGetTriviaForRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String numberString)? getTriviaForConcreteNumber,
    TResult Function()? getGetTriviaForRandomNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTriviaForConcreteNumber value)
        getTriviaForConcreteNumber,
    required TResult Function(GetTriviaForRandomNumber value)
        getGetTriviaForRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTriviaForConcreteNumber value)?
        getTriviaForConcreteNumber,
    TResult? Function(GetTriviaForRandomNumber value)?
        getGetTriviaForRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTriviaForConcreteNumber value)?
        getTriviaForConcreteNumber,
    TResult Function(GetTriviaForRandomNumber value)?
        getGetTriviaForRandomNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberTriviaEventCopyWith<$Res> {
  factory $NumberTriviaEventCopyWith(
          NumberTriviaEvent value, $Res Function(NumberTriviaEvent) then) =
      _$NumberTriviaEventCopyWithImpl<$Res, NumberTriviaEvent>;
}

/// @nodoc
class _$NumberTriviaEventCopyWithImpl<$Res, $Val extends NumberTriviaEvent>
    implements $NumberTriviaEventCopyWith<$Res> {
  _$NumberTriviaEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTriviaForConcreteNumberCopyWith<$Res> {
  factory _$$GetTriviaForConcreteNumberCopyWith(
          _$GetTriviaForConcreteNumber value,
          $Res Function(_$GetTriviaForConcreteNumber) then) =
      __$$GetTriviaForConcreteNumberCopyWithImpl<$Res>;
  @useResult
  $Res call({String numberString});
}

/// @nodoc
class __$$GetTriviaForConcreteNumberCopyWithImpl<$Res>
    extends _$NumberTriviaEventCopyWithImpl<$Res, _$GetTriviaForConcreteNumber>
    implements _$$GetTriviaForConcreteNumberCopyWith<$Res> {
  __$$GetTriviaForConcreteNumberCopyWithImpl(
      _$GetTriviaForConcreteNumber _value,
      $Res Function(_$GetTriviaForConcreteNumber) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberString = null,
  }) {
    return _then(_$GetTriviaForConcreteNumber(
      null == numberString
          ? _value.numberString
          : numberString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTriviaForConcreteNumber implements GetTriviaForConcreteNumber {
  const _$GetTriviaForConcreteNumber(this.numberString);

  @override
  final String numberString;

  @override
  String toString() {
    return 'NumberTriviaEvent.getTriviaForConcreteNumber(numberString: $numberString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTriviaForConcreteNumber &&
            (identical(other.numberString, numberString) ||
                other.numberString == numberString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numberString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTriviaForConcreteNumberCopyWith<_$GetTriviaForConcreteNumber>
      get copyWith => __$$GetTriviaForConcreteNumberCopyWithImpl<
          _$GetTriviaForConcreteNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String numberString) getTriviaForConcreteNumber,
    required TResult Function() getGetTriviaForRandomNumber,
  }) {
    return getTriviaForConcreteNumber(numberString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String numberString)? getTriviaForConcreteNumber,
    TResult? Function()? getGetTriviaForRandomNumber,
  }) {
    return getTriviaForConcreteNumber?.call(numberString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String numberString)? getTriviaForConcreteNumber,
    TResult Function()? getGetTriviaForRandomNumber,
    required TResult orElse(),
  }) {
    if (getTriviaForConcreteNumber != null) {
      return getTriviaForConcreteNumber(numberString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTriviaForConcreteNumber value)
        getTriviaForConcreteNumber,
    required TResult Function(GetTriviaForRandomNumber value)
        getGetTriviaForRandomNumber,
  }) {
    return getTriviaForConcreteNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTriviaForConcreteNumber value)?
        getTriviaForConcreteNumber,
    TResult? Function(GetTriviaForRandomNumber value)?
        getGetTriviaForRandomNumber,
  }) {
    return getTriviaForConcreteNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTriviaForConcreteNumber value)?
        getTriviaForConcreteNumber,
    TResult Function(GetTriviaForRandomNumber value)?
        getGetTriviaForRandomNumber,
    required TResult orElse(),
  }) {
    if (getTriviaForConcreteNumber != null) {
      return getTriviaForConcreteNumber(this);
    }
    return orElse();
  }
}

abstract class GetTriviaForConcreteNumber implements NumberTriviaEvent {
  const factory GetTriviaForConcreteNumber(final String numberString) =
      _$GetTriviaForConcreteNumber;

  String get numberString;
  @JsonKey(ignore: true)
  _$$GetTriviaForConcreteNumberCopyWith<_$GetTriviaForConcreteNumber>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTriviaForRandomNumberCopyWith<$Res> {
  factory _$$GetTriviaForRandomNumberCopyWith(_$GetTriviaForRandomNumber value,
          $Res Function(_$GetTriviaForRandomNumber) then) =
      __$$GetTriviaForRandomNumberCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTriviaForRandomNumberCopyWithImpl<$Res>
    extends _$NumberTriviaEventCopyWithImpl<$Res, _$GetTriviaForRandomNumber>
    implements _$$GetTriviaForRandomNumberCopyWith<$Res> {
  __$$GetTriviaForRandomNumberCopyWithImpl(_$GetTriviaForRandomNumber _value,
      $Res Function(_$GetTriviaForRandomNumber) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTriviaForRandomNumber implements GetTriviaForRandomNumber {
  const _$GetTriviaForRandomNumber();

  @override
  String toString() {
    return 'NumberTriviaEvent.getGetTriviaForRandomNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTriviaForRandomNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String numberString) getTriviaForConcreteNumber,
    required TResult Function() getGetTriviaForRandomNumber,
  }) {
    return getGetTriviaForRandomNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String numberString)? getTriviaForConcreteNumber,
    TResult? Function()? getGetTriviaForRandomNumber,
  }) {
    return getGetTriviaForRandomNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String numberString)? getTriviaForConcreteNumber,
    TResult Function()? getGetTriviaForRandomNumber,
    required TResult orElse(),
  }) {
    if (getGetTriviaForRandomNumber != null) {
      return getGetTriviaForRandomNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTriviaForConcreteNumber value)
        getTriviaForConcreteNumber,
    required TResult Function(GetTriviaForRandomNumber value)
        getGetTriviaForRandomNumber,
  }) {
    return getGetTriviaForRandomNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTriviaForConcreteNumber value)?
        getTriviaForConcreteNumber,
    TResult? Function(GetTriviaForRandomNumber value)?
        getGetTriviaForRandomNumber,
  }) {
    return getGetTriviaForRandomNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTriviaForConcreteNumber value)?
        getTriviaForConcreteNumber,
    TResult Function(GetTriviaForRandomNumber value)?
        getGetTriviaForRandomNumber,
    required TResult orElse(),
  }) {
    if (getGetTriviaForRandomNumber != null) {
      return getGetTriviaForRandomNumber(this);
    }
    return orElse();
  }
}

abstract class GetTriviaForRandomNumber implements NumberTriviaEvent {
  const factory GetTriviaForRandomNumber() = _$GetTriviaForRandomNumber;
}
