import 'package:flutter/material.dart';
import 'package:navegationtab/pages/tabs/Profile.dart';
import 'package:navegationtab/pages/tabs/car.dart';
import 'package:navegationtab/pages/tabs/settings.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabs navigator'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
              Tab(icon: Icon(Icons.person), text: 'Profile'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Cart(),
            SettingsPage(),
           Profile(),
          ],
        ),
      ),
    );
  }


}
