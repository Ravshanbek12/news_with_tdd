import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/news_bloc.dart';
import '../widgets/news_List_widget.dart';



class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: BlocProvider(
        create: (context) => NewsBloc(),
        child: NewsListWidget(),
      ),
    );
  }
}
