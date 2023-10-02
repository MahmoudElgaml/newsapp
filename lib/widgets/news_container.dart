import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articale_model.dart';

class NewsTile extends StatelessWidget {

  ArticleModel articale;


  NewsTile(this.articale);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
           articale.image!,
            height: 200,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
       Text(
          articale.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          articale.supTitle!,
          maxLines: 2,
          style: TextStyle(color: Colors.black54, fontSize: 14),
        ),
      ],
    );
  }
}
