import 'package:flutter/material.dart';

class NavigationDrawerr extends StatefulWidget{
  const NavigationDrawerr({super.key});

  @override
  State<NavigationDrawerr> createState() => _NavigationDrawerState();
  
  
}

class _NavigationDrawerState extends State<NavigationDrawerr> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    );
  }

  Widget buildHeader(BuildContext context) => Container(
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,
    ),
  );

  Widget buildMenuItems(BuildContext context) => Wrap(
    runSpacing: 8.0,
    children: [
      ListTile(
        leading: const Icon(Icons.home),
        title: const Text('Home'),
        onTap: (){},
      ),
      ListTile(
        leading: const Icon(Icons.home),
        title: const Text('Home'),
        onTap: (){},
      ),
      ListTile(
        leading: const Icon(Icons.home),
        title: const Text('Home'),
        onTap: (){},
      ),
      const Divider(color: Colors.black54,),
      ListTile(
        leading: const Icon(Icons.home),
        title: const Text('Home'),
        onTap: (){},
      ),
      ListTile(
        leading: const Icon(Icons.home),
        title: const Text('Home'),
        onTap: (){},
      ),

    ],
  );
}