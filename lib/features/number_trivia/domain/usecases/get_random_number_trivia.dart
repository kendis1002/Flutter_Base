import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/number_trivia.dart';
import '../repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia extends UseCase<NumberTrivia, NoParams> {
  GetRandomNumberTrivia(this.repository);

  final NumberTriviaRepository repository;

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) {
    return repository.getRandomNumberTrivia();
  }
}
