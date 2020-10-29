import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterblocks/store/home/main_store.dart';

class DrawerWidget extends StatelessWidget {
  final MainStore mainStore;

  const DrawerWidget({Key key, this.mainStore}) : super(key: key);

  void _onNavigationItemSelected(int index, BuildContext context) {
    mainStore.changeIndex(index);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mainStore.drawerData.length,
      itemBuilder: (_, index) {
        final data = mainStore.drawerData[index];
        return Column(
          children: [
            Observer(
              builder: (_) => ListTile(
                title: Text(data),
                selected: mainStore.selectedIndex == index,
                onTap: () => _onNavigationItemSelected(index, context),
              ),
            ),
          ],
        );
      },
    );
  }
}
