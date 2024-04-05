import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:smartplants/pages/home_page.dart';
import 'package:smartplants/pages/jadwal.dart';


class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  List<Widget> _screens(){
    return const [
      HomePages(),
      JadwalPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _items(){
    return [
      navbarItem(
          context: context,
          icon: Icons.home,
          inactiveIcon: Icons.home_outlined,
          title: 'Beranda'
      ),
      navbarItem(
          context: context,
          icon: Icons.date_range,
          inactiveIcon: Icons.date_range_outlined,
          title: 'Jadwal'
      ),
    ];
  }

  @override
  Widget build(BuildContext context){
    return PersistentTabView(
      context,
      navBarHeight: 60,
      controller: _controller,
      handleAndroidBackButtonPress: true,
      screens: _screens(),
      items: _items(),
      decoration: NavBarDecoration(
          borderRadius: const BorderRadius.only(topLeft:Radius.circular(15),topRight:Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha(80),
              blurRadius: 10,
            )
          ]
      ),
      navBarStyle: NavBarStyle.style6,
    );
  }
  PersistentBottomNavBarItem navbarItem({
    required BuildContext context,
    required IconData icon,
    required IconData inactiveIcon,
    required String title
  }){
    return PersistentBottomNavBarItem(
      icon: Icon(icon),
      inactiveIcon: Icon(inactiveIcon),
      title: (title),
      activeColorPrimary: Theme.of(context).primaryColor,
      inactiveColorPrimary: Colors.grey,
    );
  }
}