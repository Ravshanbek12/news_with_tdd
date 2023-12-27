import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/foundation.dart';



import '../../../../core/usecase/usecase.dart';
import '../../data/repository/news.dart';
import '../../domain/entites/new.dart';
import '../../domain/usecase/get_news.dart';

part 'news_event.dart';
part 'news_state.dart';

// class NewsBloc extends Bloc<NewsEvent, NewsState> {
//   NewsBloc() : super(NewsState.empty()) {
//     on<NewsStarted>((event, emit) async {
//       emit(state.copyWith(status: LoadingStatus.loading));
//
//       final usecase = await GetNewsUseCase(NewsRepositoryImpl()).call(NoParams());
//
//       usecase.either(
//             (failure) {
//           emit(state.copyWith(status: LoadingStatus.loadedWithFailure));
//         },
//             (news) {
//           emit(state.copyWith(
//             status: LoadingStatus.loadedWithSuccess,
//             news: news,
//           ));
//         },
//       );
//     });
//   }
// }
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsState.empty()) {
    on<NewsStarted>((event, emit) async {
      emit(state.copyWith(status: LoadingStatus.loading));

      try {
        final useCase = await GetNewsUseCase(repository: NewsRepositoryImpl()).call(NoParams());
        if (state.status == LoadingStatus.loading) {
          useCase.either(
                (failure) {
              if (state.status == LoadingStatus.loading) {
                emit(state.copyWith(status: LoadingStatus.loadedWithFailure));
              }
            },
                (news) {
              if (state.status == LoadingStatus.loading) {
                emit(state.copyWith(
                  status: LoadingStatus.loadedWithSuccess,
                  news: news,
                ));
              }
            },
          );
        }
      } catch (e) {
        // Handle other exceptions if needed
      }
    });
  }
}
