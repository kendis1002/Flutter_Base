import 'package:dartz/dartz.dart';

import '../error/failure.dart';

class InputConverter {
  Either<Failure, int> stringToUnsignedInteger(String str) {
    try {
      final int integer = int.parse(str);
      if (integer < 0) {
        throw const FormatException();
      }
      return Right<Failure, int>(integer);
    } on FormatException {
      return const Left<Failure, int>(Failure.inputFailedFailure());
    }
  }
}
