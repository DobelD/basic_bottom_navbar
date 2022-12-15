import 'package:basic_bottom_navbar/pages/page_four.dart';
import 'package:basic_bottom_navbar/pages/page_one.dart';
import 'package:basic_bottom_navbar/pages/page_tree.dart';
import 'package:basic_bottom_navbar/pages/page_two.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  var pageIndex = 0;
  void changeIndex(int index) {
    pageIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: const [PageOne(), PageTwo(), PageTree(), PageFour()],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: changeIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey.shade300,
          items: [
            _itemBar(Icons.home, "Home"),
            _itemBar(Icons.document_scanner_rounded, "Document"),
            _itemBar(Icons.data_array_rounded, "Data"),
            _itemBar(Icons.settings, "Setting")
          ]),
    );
  }
}

_itemBar(IconData icon, String label) {
  return BottomNavigationBarItem(icon: Icon(icon), label: label);
}
