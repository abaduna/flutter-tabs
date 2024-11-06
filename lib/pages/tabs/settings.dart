import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;
  double _fontSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // User Profile Section
          const CircleAvatar(
            radius: 50,
            child: Icon(Icons.person, size: 50),
          ),
          const SizedBox(height: 16),
          const Text(
            'User Name',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),

          // Notifications Section
          Card(
            child: ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              trailing: Switch(
                value: _notificationsEnabled,
                onChanged: (value) {
                  setState(() {
                    _notificationsEnabled = value;
                  });
                },
              ),
            ),
          ),

          // Dark Mode Section
          Card(
            child: ListTile(
              leading: const Icon(Icons.dark_mode),
              title: const Text('Dark Mode'),
              trailing: Switch(
                value: _darkModeEnabled,
                onChanged: (value) {
                  setState(() {
                    _darkModeEnabled = value;
                  });
                },
              ),
            ),
          ),

          // Font Size Section
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Font Size'),
                  Slider(
                    value: _fontSize,
                    min: 12.0,
                    max: 24.0,
                    divisions: 12,
                    label: _fontSize.round().toString(),
                    onChanged: (value) {
                      setState(() {
                        _fontSize = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),

          // Account Section
          const SizedBox(height: 16),
          const Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Account Settings'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          // Privacy Section
          const Card(
            child: ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text('Privacy'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          // About Section
          const Card(
            child: ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          // Logout Button
          const SizedBox(height: 24),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(16),
            ),
            onPressed: () {
              // Add logout logic here
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }
} 