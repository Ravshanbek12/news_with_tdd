import 'package:equatable/equatable.dart';

class NewEntity extends Equatable {
  final String author;
  final String title;
  final String description;
  final String urlToImage;

 const  NewEntity({
    required this.author,
    required this.title,
    required this.description,
    required this.urlToImage,
  });

  @override
  List<Object> get props => [author, title, description, urlToImage];

  @override
  String toString() {
    return 'NewEntity{author: $author, title: $title, description: $description, urlToImage: $urlToImage}';
  }
}
