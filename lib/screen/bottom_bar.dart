import 'package:booktickets/screen/home_screen.dart';
import 'package:booktickets/screen/person_screen.dart';
import 'package:booktickets/screen/search_screen.dart';
import 'package:booktickets/screen/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget
{
  static String routName = '/';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar>
{
  static final List<Widget> _widgetOptions= <Widget>
  [
    HomeScreen(),
    SearchScreen(),
    TicketScreen(),
    PersoneScreen(),
  ];
  int _currentIndexed = 0;

  void _onItemTapped(int index)
  {
    _currentIndexed = index;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_currentIndexed],
      bottomNavigationBar:
      BottomNavigationBar(
        currentIndex: _currentIndexed,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Color(0xff526480),
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_home_regular,
            ),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_home_filled,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_search_regular,
            ),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_search_filled,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_ticket_regular,
            ),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: 'Ticket',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_person_regular,
            ),
            activeIcon: Icon(
              FluentSystemIcons.ic_fluent_person_filled,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
