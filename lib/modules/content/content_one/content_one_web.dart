import 'package:flutter/material.dart';

class ContentOneWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'ROOF PARTY POLAROID',
            style: Theme.of(context)
                .textTheme
                .subtitle1
                .copyWith(color: Theme.of(context).accentColor),
          ),
          const SizedBox(height: 16.0),
          Text(
            'Master Cleanse Reliac Heirloom',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 16.0),
          Text(
            "Whatever cardigan tote bag tumblr hexagon brooklyn asymmetrical gentrify, subway tile poke farm-to-table.\nFranzen you probably haven't heard of them man bun deep jianbing selfies heirloom prism food truck ugh squid\nceliac humblebrag.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.caption,
          ),
          const SizedBox(height: 32.0),
          _ContentList(),
        ],
      ),
    );
  }
}

class _ContentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: contentList.map((content) {
        return ContentListItem(content);
      }).toList(),
    );
  }
}

class ContentListItem extends StatelessWidget {
  final ContentData contentData;
  ContentListItem(this.contentData);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310,
      height: 205,
      child: Row(
        children: [
          VerticalDivider(
            color: Colors.grey,
            width: 1,
          ),
          const SizedBox(width: 32),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  contentData.title,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                const SizedBox(height: 8),
                Text(
                  contentData.description,
                  style: Theme.of(context).textTheme.caption,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      'Learn More',
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Icon(
                      Icons.arrow_forward,
                      color: Theme.of(context).accentColor,
                      size: 16.0,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 32),
        ],
      ),
    );
  }
}

final List<ContentData> contentList = [
  ContentData('Shooting Stars',
      'Fingerstache flexitarian street art 8-bit waistcoat. Distillery hexagon disrupt edison bulbche.'),
  ContentData('The Catalyzer',
      'Fingerstache flexitarian street art 8-bit waistcoat. Distillery hexagon disrupt edison bulbche.'),
  ContentData('Neptune',
      'Fingerstache flexitarian street art 8-bit waistcoat. Distillery hexagon disrupt edison bulbche.'),
  ContentData('Melanchole',
      'Fingerstache flexitarian street art 8-bit waistcoat. Distillery hexagon disrupt edison bulbche.'),
];

class ContentData {
  String title;
  String description;

  ContentData(this.title, this.description);
}
