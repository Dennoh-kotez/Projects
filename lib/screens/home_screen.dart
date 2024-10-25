// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:translink/widgets/custom_bottom_nav.dart';
import 'package:translink/screens/tabs/dashboard_tab.dart';
import 'package:translink/screens/tabs/bookings_tab.dart';
import 'package:translink/screens/tabs/tracking_tab.dart';
import 'package:translink/screens/tabs/profile_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  
  final List<Widget> _tabs = [
    const DashboardTab(),
    const BookingsTab(),
    const TrackingTab(),
    const ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}