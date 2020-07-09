import 'package:flutter/material.dart';

import 'blog_one.dart';

class BlogOneMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              BlogCard(),
              SizedBox(width: 16.0),
              BlogCard(),
              SizedBox(width: 16.0),
              BlogCard(),
            ],
          ),
        ),
      ),
    );
  }
}
