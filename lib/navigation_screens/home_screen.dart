import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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

  late User _currentUser;
  late Map<String, dynamic> _currentUserData = {};


  @override
  void initState() {
    super.initState();
    // Initialize user data when the screen loads
    _initUserData();
  }

  Future<void> _initUserData() async {
    // Get current user
    _currentUser = FirebaseAuth.instance.currentUser!;
    // Fetch user profile data
    DocumentSnapshot userProfile = await FirebaseFirestore.instance
        .collection('Merchants')
        .doc(_currentUser.uid)
        .get();
    _currentUserData = userProfile.data() as Map<String, dynamic>;
    setState(() {}); // Refresh UI with fetched data
  }

  // List<Widget> pages = [
  //   HomePage(merchantName: '', mobNo: '', email: '', shopName: '', shopImage: '', latitude: '', longitude: '', shopStatus: false,),
  //   TypesPage(),
  //   SavedPage(),
  //   NotifyPage(),
  //   HistoryPage(),
  // ];

  Widget getPage(int index) {
    switch (index){
      case 0:
        return HomePage(currentUserData: _currentUserData,);
      case 1:
        return const TypesPage();
      case 2:
        return const SavedPage();
      case 3:
        return const NotifyPage();
      case 4:
        return const HistoryPage();
      default:
        return HomePage(currentUserData: _currentUserData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getPage(_currentIndex),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          overlayColor: MaterialStateProperty.all(
            Colors.transparent
          ),
          indicatorColor: CustomColors.secondaryContainer_,
          labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
                (Set<MaterialState> states) => states.contains(MaterialState.selected)
                ? smallTextBold(size: 14)
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
