import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../../core/util/input_converter.dart';
import '../../domain/entities/number_trivia.dart';
import '../../domain/usecases/get_concrete_number_trivia.dart';
import '../../domain/usecases/get_random_number_trivia.dart';
import 'blocs.dart';

const String serverFailureMessage = 'Server Failure';
const String cacheFailureMessage = 'Cache Failure';
const String invalidInputFailureMessage =
    'Invalid Input - The number must be a positive integer or zero.';

class NumberTriviaBloc extends Bloc<NumberTriviaEvent, NumberTriviaState> {
  NumberTriviaBloc({
    required GetConcreteNumberTrivia concrete,
    required GetRandomNumberTrivia random,
    required this.inputConverter,
  })  : getConcreteNumberTrivia = concrete,
        getRandomNumberTrivia = random,
        super(Empty()) {
    on<GetTriviaForConcreteNumber>(_onGetTriviaForConcreteNumber);
    on<GetTriviaForRandomNumber>(_onGetTriviaForRandomNumber);
  }

  final GetConcreteNumberTrivia getConcreteNumberTrivia;
  final GetRandomNumberTrivia getRandomNumberTrivia;
  final InputConverter inputConverter;

  Future<void> _onGetTriviaForConcreteNumber(
      GetTriviaForConcreteNumber event, Emitter<NumberTriviaState> emit) async {
    final Either<Failure, int> inputEither =
        inputConverter.stringToUnsignedInteger(event.numberString);

    await inputEither.fold(
      (Failure l) async => emit(Error(message: invalidInputFailureMessage)),
      (int r) async {
        emit(Loading());
        final Either<Failure, NumberTrivia> failureOrTrivia =
            await getConcreteNumberTrivia(
          Params(number: r),
        );
        emit(_eitherLoadedOrErrorState(failureOrTrivia));
      },
    );
  }

  Future<void> _onGetTriviaForRandomNumber(
      GetTriviaForRandomNumber event, Emitter<NumberTriviaState> emit) async {
    emit(Loading());
    final Either<Failure, NumberTrivia> failureOrTrivia =
        await getRandomNumberTrivia(
      NoParams(),
    );
    emit(_eitherLoadedOrErrorState(failureOrTrivia));
  }

  NumberTriviaState _eitherLoadedOrErrorState(
    Either<Failure, NumberTrivia> failureOrTrivia,
  ) {
    return failureOrTrivia.fold(
      (Failure failure) => Error(message: _mapFailureToMessage(failure)),
      (NumberTrivia trivia) => Loaded(trivia: trivia),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure) {
      case ServerFailure _:
        return serverFailureMessage;
      case CacheFailure _:
        return cacheFailureMessage;
      default:
        return 'Unexpected error';
    }
  }
}
