import 'package:dio/dio.dart';
import 'package:news_with_tdd/core/excation/excaption.dart';

import '../models/get_news_respons/news_respons.dart';



abstract class NewsRemoteDataSource{

  Future<NewsResponseModel> getNews();


  factory NewsRemoteDataSource( )=> NewsRemoteDataSourceImpl();

}

class NewsRemoteDataSourceImpl implements NewsRemoteDataSource{
  final dio = Dio(BaseOptions(baseUrl: 'https://newsapi.org/v2'));
  @override
  Future<NewsResponseModel> getNews() async{

    try{
      final response = await dio.get("/everything?q=keyword&apiKey=38ea3b90702044ee88f5b6e5396cf1a5");

      if(response.statusCode!>=200 && response.statusCode!<300){
        return  NewsResponseModel.fromJson(response.data);
      }
       else{
         print(response.statusMessage);
         throw ServerException(errorMessage: response.statusMessage??"", errorCode: "${response.statusCode??''}");
      }
    }
    on ServerException{
      rethrow;
    }
    catch(e){
      print(e);
      throw const ServerException(errorMessage: "Something went wrong", errorCode: '141');
    }
  }

}