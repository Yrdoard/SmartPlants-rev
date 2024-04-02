import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smartplants/pages/atur_jadwal.dart';
import 'package:smartplants/pages/home_page.dart';
import 'package:smartplants/pages/home_pages.dart';
import 'package:smartplants/pages/jadwal.dart';
import 'package:smartplants/app/named_routes.dart';







// final GlobalKey<NavigatorState>_rootNavigator = GlobalKey(debugLabel: 'root');
// final GlobalKey<NavigatorState>_shellNavigator = GlobalKey(debugLabel: 'shell');
//
// final goRouterProvider =
//    GoRouter(
//     navigatorKey: _rootNavigator,
//     initialLocation: '/home',
//     routes: [
//       GoRoute(
//           path: 'home',
//           name: root,
//           builder: (context, state) => HomePages(key: state.pageKey),
//       ),
//
//       ShellRoute(
//         navigatorKey: _shellNavigator,
//             builder: (context, state, child) => Jadwal_page(key: state.pageKey, child: child),
//         routes: [
//           GoRoute(
//               path: '/',
//               name: home,
//               pageBuilder: (context, state) {
//                 return NoTransitionPage(
//                 child: HomePages(
//                   key: state.pageKey,
//                 )
//                 );
//   },
//           ),
//           GoRoute(
//             path: '/Jadwal',
//             name: jadwal,
//             pageBuilder: (context, state) {
//               return NoTransitionPage(
//                   child: Jadwal_page(
//                     key: state.pageKey, child: null,
//                   )
//               );
//             },
//           )
//         ]
//       )
//       ],
//   );








final routes = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const JadwalPage()
  ),
  GoRoute(
      path: '/Jadwal',
    builder: (context, state) => const HomePages()
  )
]);
