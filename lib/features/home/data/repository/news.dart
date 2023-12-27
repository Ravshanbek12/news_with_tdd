import 'package:news_with_tdd/core/either/either.dart';
import 'package:news_with_tdd/core/excation/excaption.dart';
import 'package:news_with_tdd/core/failure/failure.dart';
import 'package:news_with_tdd/features/home/data/data_source/network_data_source.dart';
import 'package:news_with_tdd/features/home/domain/entites/new.dart';
import 'package:news_with_tdd/features/home/domain/repositories/news_repository.dart';

class NewsRepositoryImpl implements NewsRepository {
  final _newsRemoteDataSource = NewsRemoteDataSource();

  @override
  Future<Either<ServerFailure, List<NewEntity>>> getNews() async {
    try {
      final response = await _newsRemoteDataSource.getNews();

      final list = response.article
          .map((e) => NewEntity(
              author: e.author,
              title: e.title,
              description: e.description,
              urlToImage: e.urlToImage))
          .toList();

      return Right(list);
    } on ServerException catch (e) {
      print(e);
      return Left(
        ServerFailure.fromServerException(e),
      );
    }
  }
}
