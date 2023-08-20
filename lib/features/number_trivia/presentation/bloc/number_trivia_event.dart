import 'package:equatable/equatable.dart';

abstract class NumberTriviaEvent extends Equatable {
  const NumberTriviaEvent({this.properties = const <dynamic>[]});

  final List<dynamic> properties;

  @override
  List<Object?> get props => properties;
}

class GetTriviaForConcreteNumber extends NumberTriviaEvent {
  GetTriviaForConcreteNumber(this.numberString)
      : super(properties: <dynamic>[numberString]);

  final String numberString;
}

class GetTriviaForRandomNumber extends NumberTriviaEvent {}
