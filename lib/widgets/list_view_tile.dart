import 'package:flutter/cupertino.dart';
import 'package:news_app_ui_setup/services/get_news.dart';
import 'package:news_app_ui_setup/widgets/news_container.dart';

import '../models/articale_model.dart';

class ListTilee extends StatefulWidget {
  const ListTilee({Key? key}) : super(key: key);

  @override
  State<ListTilee> createState() => _ListTileeState();
}

class _ListTileeState extends State<ListTilee> {
  List<ArticleModel> arts=[];
  @override
  void initState(){
    super.initState();
    geGeneralNews();
  }

  Future<void> geGeneralNews() async {
     arts=  await GetNews().getHttp();
     setState(() {

     });

  }
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) => NewsTile(arts[index]),
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemCount: 10,
    );
  }
}
