import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:now_won/navigation_screens/hame_page.dart';
import 'package:now_won/navigation_screens/history_page.dart';
import 'package:now_won/navigation_screens/notify_page.dart';
import 'package:now_won/navigation_screens/saved_page.dart';
import 'package:now_won/navigation_screens/types_page.dart';
import 'package:now_won/user_interface/font_util.dart';


import '../user_interface/custom_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pahodai = double.infinity;

  int _currentIndex = 0;

  late bool isSelected;
  List<Widget> pages = [
    // Stack(children: [
    //   SingleChildScrollView(
    //     child: Column(
    //       children: [
    //         Container(
    //           child: Image(
    //             image: AssetImage('assets/images/screenshot.png'),
    //           ),
    //         ),
    //         Container(
    //           width: double.infinity,
    //           height: 300,
    //           color: Colors.blue,
    //         ),
    //         Container(
    //           width: double.infinity,
    //           height: 300,
    //           color: Colors.red,
    //         ),
    //         Container(
    //           width: double.infinity,
    //           height: 300,
    //           color: Colors.green,
    //         ),
    //         Container(
    //           width: double.infinity,
    //           height: 300,
    //           color: Colors.yellow,
    //         ),
    //         Container(
    //           width: double.infinity,
    //           height: 300,
    //           color: Colors.purpleAccent,
    //         ),
    //         Container(
    //           width: double.infinity,
    //           height: 300,
    //           color: Colors.grey,
    //         ),
    //         Container(
    //           width: double.infinity,
    //           height: 300,
    //           color: Colors.orange,
    //         ),
    //       ],
    //     ),
    //   ),
    //   FrostedGlassBox(
    //     theWidth: double.infinity,
    //     theHeight: 130.0,
    //     theCorner: 0.0,
    //     theChild: SizedBox(),
    //     theOpacity: 0.7,
    //     theColor: CustomColors.surface_,
    //   ),
    //   Positioned(
    //     top: 0.0,
    //     left: 0.0,
    //     right: 0.0,
    //     child: Padding(
    //       padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 48.0),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Container(
    //             width: 56.0,
    //             height: 56.0,
    //             child: Icon(Icons.history),
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(28.0),
    //               color: Color(0xFF3A4B3F).withOpacity(0.16),
    //             ),
    //           ),
    //           SizedBox(
    //             width: 10.0,
    //           ),
    //           Container(
    //             width: 230.0,
    //             height: 56.0,
    //             child: Center(
    //               child: Text(
    //                 "Search",
    //                 style: TextStyle(color: Colors.black54, fontSize: 24.0),
    //               ),
    //             ),
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(28.0),
    //               color: Color(0xFF3A4B3F).withOpacity(0.16),
    //             ),
    //           ),
    //           SizedBox(
    //             width: 10.0,
    //           ),
    //           Container(
    //             width: 56.0,
    //             height: 56.0,
    //             child: Icon(Icons.person),
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(28.0),
    //               color: Color(0xFF3A4B3F).withOpacity(0.16),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    //   Positioned(
    //       left: 0.0,
    //       right: 0.0,
    //       bottom: 120.0,
    //       child: FrostedGlassBox(
    //         theWidth: double.infinity,
    //         theHeight: 100.0,
    //         theCorner: 0.0,
    //         theChild: SizedBox(),
    //         theOpacity: 0.7,
    //         theColor: CustomColors.surface_,
    //       )),
    //   Positioned(
    //     left: 16.0,
    //     right: 16.0,
    //     bottom: 140.0,
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Container(
    //           width: 56.0,
    //           height: 56.0,
    //           child: Icon(Icons.bookmark),
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(28.0),
    //             color: Color(0xFF3A4B3F).withOpacity(0.16),
    //           ),
    //         ),
    //         SizedBox(
    //           width: 10.0,
    //         ),
    //         Container(
    //           width: 230.0,
    //           height: 56.0,
    //           child: Center(
    //             child: Text(
    //               "Category",
    //               style: TextStyle(color: Colors.black54, fontSize: 24.0),
    //             ),
    //           ),
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(28.0),
    //             color: Color(0xFF3A4B3F).withOpacity(0.16),
    //           ),
    //         ),
    //         SizedBox(
    //           width: 10.0,
    //         ),
    //         Container(
    //           width: 56.0,
    //           height: 56.0,
    //           child: Icon(Icons.notifications_active_rounded),
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(28.0),
    //             color: Color(0xFF3A4B3F).withOpacity(0.16),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    //
    // ]),
    // Center(
    //   child: Text(
    //     'Category',
    //     style: LargeTitel(),
    //   ),
    // ),
    // Center(
    //   child: Text(
    //     'Saved',
    //     style: LargeTitel(),
    //   ),
    // ),
    // Center(
    //   child: Text(
    //     'Reminder',
    //     style: LargeTitel(),
    //   ),
    // ),
    // Center(
    //   child: Text(
    //     'History',
    //     style: LargeTitel(),
    //   ),
    // ),
    HomePage(),
    TypesPage(),
    SavedPage(),
    NotifyPage(),
    HistoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          overlayColor: MaterialStateProperty.all(
            Colors.transparent
          ),
          indicatorColor: CustomColors.secondaryContainer_,
          labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
                (Set<MaterialState> states) => states.contains(MaterialState.selected)
                ? CaptionBold(size: 14)
                : Headline(tc: CustomColors.onSurfaceVariant_ ,size: 14,),
          ),
          // iconTheme: MaterialStateProperty.all(
          //   IconThemeData(color: CustomColors.onSecondaryContainer_)
          // ),

        ),
        child: NavigationBar(
          animationDuration: Duration(milliseconds: 700),
          selectedIndex: _currentIndex,
          backgroundColor: CustomColors.surfaceContainer_,
          surfaceTintColor: Colors.transparent,
          onDestinationSelected: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          destinations: [
            NavigationDestination(
              selectedIcon: Icon(Icons.home, color: CustomColors.onSecondaryContainer_),
              icon: Icon(Icons.home_outlined, color: CustomColors.onSurfaceVariant_,),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.view_list, color: CustomColors.onSecondaryContainer_),
              icon: Icon(Icons.view_list_outlined, color: CustomColors.onSurfaceVariant_,),
              label: 'Types',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.bookmark, color: CustomColors.onSecondaryContainer_),
              icon: Icon(Icons.bookmark_border_outlined, color: CustomColors.onSurfaceVariant_,),
              label: 'Watchlist',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.notifications_active, color: CustomColors.onSecondaryContainer_),
              icon: Icon(Icons.notifications_active_outlined, color: CustomColors.onSurfaceVariant_,),
              label: 'Notify',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.history, color: CustomColors.onSecondaryContainer_),
              icon: Icon(Icons.history_outlined, color: CustomColors.onSurfaceVariant_,),
              label: 'History',
            ),
          ],
        ),
      ),
    );
  }
}
