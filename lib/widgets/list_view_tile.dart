import 'package:flutter/cupertino.dart';
import 'package:news_app_ui_setup/widgets/news_container.dart';

class ListTilee extends StatelessWidget {
  const ListTilee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) => NewsTile(),
      separatorBuilder: (context, index) => SizedBox(height: 10),
      itemCount: 10,
    );
  }
}
