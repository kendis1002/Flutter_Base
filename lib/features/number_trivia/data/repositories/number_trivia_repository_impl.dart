import 'package:dartz/dartz.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/platform/network_info.dart';
import '../../domain/entities/number_trivia.dart';
import '../../domain/repositories/number_trivia_repository.dart';
import '../datasources/number_trivia_local_data_source.dart';
import '../datasources/number_trivia_remote_data_source.dart';
import '../models/number_trivia_model.dart';

typedef _ConcreteOrRandomChooser = Future<NumberTrivia> Function();

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  NumberTriviaRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  final NumberTriviaRemoteDataSource remoteDataSource;
  final NumberTriviaLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(
      int number) async {
    return _getTrivia(() {
      return remoteDataSource.getConcreteNumberTrivia(number);
    });
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() async {
    return _getTrivia(() {
      return remoteDataSource.getRandomNumberTrivia();
    });
  }

  Future<Either<Failure, NumberTrivia>> _getTrivia(
    _ConcreteOrRandomChooser getConcreteOrRandom,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final NumberTriviaModel remoteTrivia =
            await getConcreteOrRandom() as NumberTriviaModel;
        localDataSource.cacheNumberTrivia(remoteTrivia);
        return Right<Failure, NumberTrivia>(remoteTrivia);
      } on ServerException {
        return Left<Failure, NumberTrivia>(ServerFailure());
      }
    } else {
      try {
        final NumberTriviaModel localTrivia =
            await localDataSource.getLastNumberTrivia();
        return Right<Failure, NumberTrivia>(localTrivia);
      } on CacheException {
        return Left<Failure, NumberTrivia>(CacheFailure());
      }
    }
  }
}
