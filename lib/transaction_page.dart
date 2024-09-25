import 'package:flutter/material.dart';
import 'package:send_money_app/pages/home_page.dart';
import 'package:send_money_app/pages/scheduled_page.dart';
import 'package:send_money_app/pages/send_page.dart';

import 'history_page.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  int _selectedIndex = 0;

// Replace icons with actual pages
  static final List<Widget> _pages = <Widget>[
    const HomePage(),
    const SendPage(),
    const HistoryPage(),
    const ScheduledPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          elevation: 8,
          onPressed: () {
            // Add your onPressed code here!
          },
          label: Text(
            'Send New'.toUpperCase(),
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          icon: const Icon(
            Icons.add_circle_rounded,
            color: Colors.white,
            size: 40,
          ),
          backgroundColor: const Color(0xff32C7B2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                8.0), // Change this value for more rounded corners
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white10,
          elevation: 0,
          selectedItemColor: Colors.black,

          unselectedIconTheme: const IconThemeData(
            color: Colors.grey,
          ),
          unselectedItemColor: Colors.grey,
          selectedFontSize: 18,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.send_to_mobile),
              label: 'Send',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_sharp),
              label: 'Scheduled',
            ),
          ],
          currentIndex: _selectedIndex,
          //New
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
