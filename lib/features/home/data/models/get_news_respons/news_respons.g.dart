// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_respons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsResponseModel _$NewsResponseModelFromJson(Map<String, dynamic> json) =>
    NewsResponseModel(
      article: (json['article'] as List<dynamic>?)
              ?.map((e) =>
                  NewsResponseArticleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$NewsResponseModelToJson(NewsResponseModel instance) =>
    <String, dynamic>{
      'article': instance.article,
    };

NewsResponseArticleModel _$NewsResponseArticleModelFromJson(
        Map<String, dynamic> json) =>
    NewsResponseArticleModel(
      author: json['author'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      urlToImage: json['urlToImage'] as String? ?? '',
    );

Map<String, dynamic> _$NewsResponseArticleModelToJson(
        NewsResponseArticleModel instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'urlToImage': instance.urlToImage,
    };
