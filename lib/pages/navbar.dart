import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:smartplants/pages/home_page.dart';
import 'package:smartplants/pages/jadwal.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar>{
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: [
          HomePages(),
          JadwalPage(),
        ][selectedIndex],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.white.withOpacity(0.1),
            labelTextStyle: MaterialStateProperty.all(
              const TextStyle(
                color: Color.fromARGB(255, 0, 111, 18),
                fontSize: 11,
                fontWeight: FontWeight.w500,
              )
            )
          ),
          child: NavigationBar(
            height: 60,
            elevation: 20,
            selectedIndex: selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                selectedIndex = index;
              });
            },
            destinations: [
              NavigationDestination(
                selectedIcon: Icon(Icons.home,color: Color.fromARGB(255, 0, 111, 18)),
                icon: Icon(Icons.home_outlined),
                label: 'Beranda',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.date_range,color: Color.fromARGB(255, 0, 111, 18)),
                icon: Icon(Icons.date_range_outlined),
                label:'Beranda'
              )
            ],
          ),
        )

      );

  }
}