import 'package:hooks_riverpod/hooks_riverpod.dart';

class NavBarNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void updateActiveIndex(int index) {
    state = index;
  }
}

final navBarNotifierProvider = NotifierProvider<NavBarNotifier, int>(() {
  return NavBarNotifier();
});
