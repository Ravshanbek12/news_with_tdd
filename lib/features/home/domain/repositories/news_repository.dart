import 'package:news_with_tdd/core/failure/failure.dart';
import 'package:news_with_tdd/features/home/domain/entites/new.dart';

import '../../../../core/either/either.dart';

abstract class NewsRepository{

  Future<Either<ServerFailure,List<NewEntity>>> getNews();

}