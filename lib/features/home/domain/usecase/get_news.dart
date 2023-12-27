


import 'package:news_with_tdd/core/either/either.dart';
import 'package:news_with_tdd/core/failure/failure.dart';
import 'package:news_with_tdd/features/home/domain/entites/new.dart';
import 'package:news_with_tdd/features/home/domain/repositories/news_repository.dart';

import '../../../../core/usecase/usecase.dart';

class GetNewsUseCase implements UseCase<List<NewEntity>,NoParams>{

  final NewsRepository _repository;

  const GetNewsUseCase({required NewsRepository repository}):_repository=repository;

  @override
  Future<Either<Failure, List<NewEntity>>> call(NoParams params) async{
    return _repository.getNews();
  }
}