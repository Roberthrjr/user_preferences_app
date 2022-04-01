import 'package:flutter/material.dart';
import 'package:user_preferences_app/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static const String routerName = 'Settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;
  int gender = 1;
  String name = 'Roberth';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Settings',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
              ),
              const Divider(),
              SwitchListTile.adaptive(
                value: isDarkMode,
                title: const Text('DarkMode'),
                onChanged: (value) {
                  isDarkMode = value;
                  setState(() {});
                  //print(isDarkMode);
                },
              ),
              const Divider(),
              RadioListTile<int>(
                value: 1,
                groupValue: gender,
                title: const Text('Masculine'),
                onChanged: (value) {
                  gender = value ?? 1;
                  setState(() {});
                  print(gender);
                },
              ),
              const Divider(),
              RadioListTile<int>(
                value: 2,
                groupValue: gender,
                title: const Text('Feminine'),
                onChanged: (value) {
                  gender = value ?? 2;
                  setState(() {});
                  print(gender);
                },
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: 'Roberth',
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                    print(name);
                  },
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    helperText: 'User name',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
