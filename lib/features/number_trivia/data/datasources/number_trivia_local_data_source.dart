import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/error/exception.dart';
import '../models/number_trivia_model.dart';

abstract class NumberTriviaLocalDataSource {
  /// Gets the cached [NumberTriviaModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [NoLocalDataException] if no cached data is present.
  Future<NumberTriviaModel> getLastNumberTrivia();

  Future<void> cacheNumberTrivia(NumberTriviaModel triviaToCache);
}

const String cachedNumberTrivia = 'CACHED_NUMBER_TRIVIA';

class NumberTriviaLocalDataSourceImpl implements NumberTriviaLocalDataSource {
  NumberTriviaLocalDataSourceImpl({required this.sharedPreferences});

  final SharedPreferences sharedPreferences;

  @override
  Future<NumberTriviaModel> getLastNumberTrivia() {
    final String? jsonString = sharedPreferences.getString(cachedNumberTrivia);
    if (jsonString != null) {
      return Future<NumberTriviaModel>.value(
          NumberTriviaModel.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheNumberTrivia(NumberTriviaModel triviaToCache) {
    return sharedPreferences.setString(
      cachedNumberTrivia,
      json.encode(triviaToCache.toJson()),
    );
  }
}
