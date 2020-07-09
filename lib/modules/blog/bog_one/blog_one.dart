import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterblocks/widget/responsive_widget.dart';

import 'blog_one_mobile.dart';
import 'blog_one_web.dart';

class BlogOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobileWidget: BlogOneMobile(),
      webWidget: BlogOneWeb(),
    );
  }
}

class BlogCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: 3,
            child: Image.network(
              'https://dummyimage.com/720x400',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'CATEGORY',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      .copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'The Catalyzer',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Photo booth fam kinfolk cold-pressed sriracha leggings jianbing microdosing tousled waistcoat.',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 16.0,
            ),
            child: Row(
              children: [
                Row(
                  children: [
                    Text(
                      'Learn More',
                      style: const TextStyle(color: Colors.green),
                    ),
                    const SizedBox(width: 8.0),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                      size: 16.0,
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    IconText(icon: Icons.visibility, text: '1.2K'),
                    const SizedBox(width: 8.0),
                    IconText(icon: Icons.mode_comment, text: '6'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconText({
    Key key,
    @required this.icon,
    @required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey,
          size: 16.0,
        ),
        const SizedBox(width: 4.0),
        Text(text),
      ],
    );
  }
}
