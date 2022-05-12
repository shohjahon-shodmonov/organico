import 'package:flutter/cupertino.dart';
import 'package:organico_app/screens/cart_page/cart_page.dart';
import 'package:organico_app/screens/explore_pages/explore_page.dart';
import 'package:organico_app/screens/home_page/home_page.dart';
import 'package:organico_app/screens/profile_pages/profile_page.dart';

class BottomNavBarProvider extends ChangeNotifier {
  int currentPage = 0;
  List<Widget> pages = [
    const HomePage(),
    const ExplorePage(),
    const CartPage(),
     ProfileScreen(),
  ];

  void changePages(int value) {
    currentPage = value;
    notifyListeners();
  }
}
