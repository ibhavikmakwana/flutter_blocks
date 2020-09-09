import 'package:flutter/material.dart';

class DrawerData {
  final String title;
  final List<String> parts;

  DrawerData(this.title, this.parts);
}

class DrawerWidget extends StatelessWidget {
  final List<DrawerData> _drawerData = [
    DrawerData(
      'Blog',
      ['assets/img_blog_one.png', '2'],
    ),
    DrawerData(
      'Contact',
      ['assets/img_contact_one.png', '2'],
    ),
    DrawerData(
      'Content',
      ['1', '2'],
    ),
    DrawerData(
      'CTA',
      ['1', '2'],
    ),
    DrawerData(
      'E-commerce',
      ['1', '2'],
    ),
    DrawerData(
      'Feature',
      ['1', '2'],
    ),
    DrawerData(
      'Footer',
      ['1', '2'],
    ),
    DrawerData(
      'Gallery',
      ['1', '2'],
    ),
    DrawerData(
      'Header',
      ['1', '2'],
    ),
    DrawerData(
      'Hero',
      ['1', '2'],
    ),
    DrawerData(
      'Pricing',
      ['1', '2'],
    ),
    DrawerData(
      'Statistics',
      ['1', '2'],
    ),
    DrawerData(
      'Step',
      ['1', '2'],
    ),
    DrawerData(
      'Team',
      ['1', '2'],
    ),
    DrawerData(
      'Testimonial',
      ['1', '2'],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _drawerData.length,
      itemBuilder: (_, index) {
        final data = _drawerData[index];
        return Column(
          children: [
            ListTile(title: Text(data.title)),
            Divider(),
            ListView.builder(
              shrinkWrap: true,
              itemCount: data.parts.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, i) {
                final innerData = data.parts[i];
                if (innerData.length > 1)
                  return DrawerItem(assetPath: innerData);
                return SizedBox.shrink();
              },
            )
          ],
        );
      },
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String assetPath;

  const DrawerItem({Key key, this.assetPath}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        assetPath,
        height: 75,
        width: 45,
      ),
    );
  }
}
