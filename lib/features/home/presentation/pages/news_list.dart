import 'package:flutter/material.dart';

import '../../domain/entites/new.dart';


class NewsDetailPage extends StatelessWidget {
  final NewEntity news;

  const NewsDetailPage({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Author: ${news.author}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Title: ${news.title}'),
            Text('Description: ${news.description}'),
            Text('URL To Image: ${news.urlToImage}'),

            // Include other information as needed
          ],
        ),
      ),
    );
  }
}
