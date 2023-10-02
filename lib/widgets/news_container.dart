import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
    ),
            const Text(
              'Large Title should be places in this place Large Title should be places in this place sdfadsf',
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
            const Text(
              'and here is the desciption of the news you can place your desc here',
              maxLines: 2,
              style: TextStyle(color: Colors.black54, fontSize: 14),
            ),
      ],
    );
  }
}
