import 'package:flutter/material.dart';
import 'package:untitled/screens/appointment_page.dart';
import 'package:untitled/screens/home_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    int currentPage = 0;
    final PageController _page = PageController();
    return Scaffold(
      body: PageView(
        controller: _page,
        onPageChanged: ((value) {
          setState(() {
            currentPage = value;
          });
        }),
        children: const <Widget>[
          HomePage(),
          AppointmentPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: ((page) {
          setState(() {
            currentPage = page;
            _page.animateToPage(page,
                duration: const Duration(microseconds: 500),
                curve: Curves.easeInOut,
            );
          });
        }),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.houseChimneyMedical),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.solidCalendarCheck),
            label: 'Appointments',
          ),

        ],
      ),
    );
  }
}
