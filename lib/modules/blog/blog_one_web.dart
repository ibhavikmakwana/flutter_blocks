import 'package:flutter/material.dart';

import 'blog_one.dart';

class BlogOneWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          SizedBox(width: 48.0),
          Expanded(child: BlogCard()),
          SizedBox(width: 16.0),
          Expanded(child: BlogCard()),
          SizedBox(width: 16.0),
          Expanded(child: BlogCard()),
          SizedBox(width: 48.0),
        ],
      ),
    );
  }
}
