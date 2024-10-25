// lib/screens/tabs/profile_tab.dart

import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  bool _isDarkMode = false;
  bool _notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // Handle edit profile button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Profile picture
              const CircleAvatar(
                radius: 64,
                backgroundImage: NetworkImage(
                  'https://picsum.photos/200/300',
                ),
              ),
              const SizedBox(height: 16),

              // Profile information
              const Column(
                children: [
                  Text(
                    'John Doe',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'johndoe@example.com',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Profile statistics
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfileStatistic(
                    label: 'Rides',
                    value: '123',
                  ),
                  ProfileStatistic(
                    label: 'Reviews',
                    value: '45',
                  ),
                  ProfileStatistic(
                    label: 'Rating',
                    value: '4.5/5',
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Theme switcher
              Column(
                children: [
                  const Text('Theme:'),
                  Row(
                    children: [
                      Switch(
                        value: _isDarkMode,
                        onChanged: (value) {
                          setState(() {
                            _isDarkMode = value;
                          });
                        },
                      ),
                      const Text('Dark Mode'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // Notification settings
              Column(
                children: [
                  const Text('Notifications:'),
                  Row(
                    children: [
                      Switch(
                        value: _notificationsEnabled,
                        onChanged: (value) {
                          setState(() {
                            _notificationsEnabled = value;
                          });
                        },
                      ),
                      const Text('Enabled'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Profile buttons
              Column(
                children: [
                  OutlinedButton(
                    onPressed: () {
                      // Handle view profile button press
                    },
                    child: const Text('View Profile'),
                  ),
                  const SizedBox(height: 8),
                  OutlinedButton(
                    onPressed: () {
                      // Handle logout button press
                    },
                    child: const Text('Logout'),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Additional settings
              Column(
                children: [
                  const Text(
                    'Additional Settings',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  ListTile(
                    title: const Text('Language'),
                    subtitle: const Text('English'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      // Handle language settings press
                    },
                  ),
                  ListTile(
                    title: const Text('Currency'),
                    subtitle: const Text('USD'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      // Handle currency settings press
                    },
                  ),
                  ListTile(
                    title: const Text('Help & Support'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      // Handle help & support press
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileStatistic extends StatelessWidget {
  final String label;
  final String value;

  const ProfileStatistic({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}