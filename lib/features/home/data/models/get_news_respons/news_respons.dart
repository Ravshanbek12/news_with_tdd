import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_respons.g.dart';

@JsonSerializable()
class NewsResponseModel extends Equatable {
  @JsonKey(name: 'article', defaultValue: [])
  final List<NewsResponseArticleModel> article;

  NewsResponseModel({
    required this.article,
  });


  factory NewsResponseModel.fromJson(Map<String, dynamic>data)=>
      _$NewsResponseModelFromJson(data);

  Map<String, dynamic> toJson() => _$NewsResponseModelToJson(this);

  @override
  List<Object> get props => [article];


  @override
  String toString() => 'NewsResponseModel{article: $article}';
}

@JsonSerializable()
class NewsResponseArticleModel extends Equatable {
  @JsonKey(name: 'author', defaultValue: '')
  final String author;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'description', defaultValue: '')
  final String description;
  @JsonKey(name: 'urlToImage', defaultValue: '')
  final String urlToImage;

  NewsResponseArticleModel({
    required this.author,
    required this.title,
    required this.description,
    required this.urlToImage,
  });


  factory NewsResponseArticleModel.fromJson(Map<String, dynamic>data)=>
      _$NewsResponseArticleModelFromJson(data);

  Map<String, dynamic> toJson() => _$NewsResponseArticleModelToJson(this);

  @override
  List<Object> get props => [author, title, description, urlToImage];

  @override
  String toString() => 'NewsResponseArticleModel{author: $author, title: $title, description: $description, urlToImage: $urlToImage}';
}
