import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartplants/app/controllers.dart';
  class BottomNavigationWidget extends ConsumerStatefulWidget{
    const BottomNavigationWidget ({super.key });
    @override
    ConsumerState<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();

  }
  class _BottomNavigationWidgetState extends ConsumerState<BottomNavigationWidget> {
    @override
    Widget build (BuildContext context){
      final position = ref.watch(ControllerProvider);
      return BottomNavigationBar(
        currentIndex: position,
          onTap: (value) => _onTap(value),
          items:const [
            BottomNavigationBarItem(
                activeIcon:  Icon(Icons.home_outlined),
                icon:  Icon(Icons.home),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                activeIcon:  Icon(Icons.schedule_outlined),
                icon:  Icon(Icons.schedule),
                label: 'Jadwal'
            )
          ]);
    }
    void _onTap(int index){
      ref.read(ControllerProvider.notifier).setPosition(index);
      switch (index){
        case 0:
          context.go('');
          break;
        case 1:
          context.go('');
          break;
        default:
      }
    }
  }
// BottomNavigationBarItem bottomnavitem(IconData icon, IconData activeIcon, String label){
//   return BottomNavigationBarItem(
//     icon: Icon(
//         icon
//     ),
//     activeIcon: Icon(
//         activeIcon
//     ),
//     label: label,
//   );
// }
