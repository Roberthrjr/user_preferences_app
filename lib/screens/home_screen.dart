import 'package:flutter/material.dart';
import 'package:user_preferences_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'Home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('isDarkMode: '),
          Divider(),
          Text('Gender: '),
          Divider(),
          Text('User Name: '),
          Divider(),
        ],
      ),
    );
  }
}
