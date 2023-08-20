import 'package:equatable/equatable.dart';

import '../../domain/entities/number_trivia.dart';

abstract class NumberTriviaState extends Equatable {
  const NumberTriviaState({this.properties = const <dynamic>[]});

  final List<dynamic> properties;

  @override
  List<Object?> get props => properties;
}

class NumberTriviaInitial extends NumberTriviaState {}

class Empty extends NumberTriviaState {}

class Loading extends NumberTriviaState {}

class Loaded extends NumberTriviaState {
  const Loaded({required this.trivia});

  final NumberTrivia trivia;

  @override
  List<Object> get props => <Object>[trivia];
}

class Error extends NumberTriviaState {
  Error({required this.message}) : super(properties: <String>[message]);

  final String message;
}
