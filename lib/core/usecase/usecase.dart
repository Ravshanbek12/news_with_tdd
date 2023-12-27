

import 'package:news_with_tdd/core/failure/failure.dart';

import '../either/either.dart';

abstract  class UseCase<Type,Params>{
  const UseCase();
  Future<Either<Failure,Type>> call (Params params);
}

class NoParams{}