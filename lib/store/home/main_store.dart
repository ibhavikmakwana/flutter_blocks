import 'package:mobx/mobx.dart';

part 'main_store.g.dart';

class MainStore = _MainStore with _$MainStore;

abstract class _MainStore with Store {
  @observable
  int selectedIndex = 0;

  @observable
  final ObservableList<String> drawerData = ObservableList.of([
    'Blog',
    'Contact',
    'Content',
    'CTA',
    'E-commerce',
    'Feature',
    'Footer',
    'Gallery',
    'Header',
    'Hero',
    'Pricing',
    'Statistics',
    'Step',
    'Team',
    'Testimonial',
  ]);

  @action
  void changeIndex(int index) => selectedIndex = index;
}
