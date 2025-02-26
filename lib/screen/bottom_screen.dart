import 'package:book_mate/screen/home_screen.dart';
import 'package:book_mate/screen/login_screen.dart';
import 'package:book_mate/screen/search_screen.dart';
import 'package:book_mate/screen/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class bottom_screen extends StatefulWidget {
  const bottom_screen({super.key});

  @override
  State<bottom_screen> createState() => _bottom_screenState();
}

class _bottom_screenState extends State<bottom_screen> {
  int _selectIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const homeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const LoginScreen(),
  ];

  void _onItemTapped(int index) {
    _selectIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectIndex,
          onTap: _onItemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: const Color(0xFF526480),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: 'Ticket'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: 'profile'),
          ]),
    );
  }
}
