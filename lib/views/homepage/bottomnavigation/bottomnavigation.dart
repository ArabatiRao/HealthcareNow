import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/homepage/homepage.dart';
import 'package:flutter_application_2/views/homepage/womenscollections/womenscollectionspage.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key? key, this.tabIndexId}) : super(key: key);

  final tabIndexId;
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  void checkBottomIndex() {
    setState(() {
      tabIndexs = widget.tabIndexId != null ? widget.tabIndexId : 0;
    });
  }

  var tabIndexs = 0;
  void _onItemTapped(int index) {
    setState(() {
      tabIndexs = index;
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // DrawerList(),
          IndexedStack(
            index: tabIndexs,
            children: [
              HomePage(),
              WomensCollectionsPage(),
              Container(),
              Container(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
        currentIndex: tabIndexs,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,
        items: [
          _bottomNavigationBarItem(
            icon: Container(child: Icon(Icons.home)),
            label: 'Home',
          ),
          _bottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Store',
          ),
          _bottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          _bottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  _bottomNavigationBarItem({required icon, required String label}) {
    return BottomNavigationBarItem(
      icon: icon,
      label: label,
    );
  }
}
