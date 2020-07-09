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
      ['assets/blog_one.png', '2'],
    ),
    DrawerData(
      'Contact',
      ['1', '2'],
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
                if (innerData.length > 1) {
                  return Image.asset(
                    innerData,
                    height: 100,
                    width: 45,
                  );
                }
                return ListTile(
                  title: Text(innerData),
                  selected: i == 0,
                );
              },
            )
          ],
        );
      },
    );
  }
}
