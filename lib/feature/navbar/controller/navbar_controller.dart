import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

import '../../analytics/view/analytics_screen.dart';
import '../../home/view/home_screen.dart';
import '../../practice/view/practice_screen.dart';
import '../../tournament/view/tournament_screen.dart';

class NavBarController extends GetxController {
  var selectedIndex = 0.obs;
  var screens = [
    const HomeScreen(),
    const PracticeScreen(),
    const AnalyticsScreen(),
    const TournamentScreen()
  ];
  void updateIndex({required int index}) {
    selectedIndex.value = index;
  }
}
