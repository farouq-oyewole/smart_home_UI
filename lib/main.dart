import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:smart_home_app/pages/home_page.dart';
import 'package:smart_home_app/pages/room_page.dart';
import 'package:smart_home_app/pages/settings_page.dart';
import 'package:smart_home_app/pages/statistics_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyBXX5zNkHANeSmXF7DNrVXmZPGkD2jLWjE",
        authDomain: "smart-home-4a733.firebaseapp.com",
        projectId: "smart-home-4a733",
        storageBucket: "smart-home-4a733.firebasestorage.app",
        messagingSenderId: "712916670588",
        appId: "1:712916670588:web:8c3646822b7a204d15d1f9",
        measurementId: "G-Y9FWBG8NWB"
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Colors.grey[200],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[200],
          foregroundColor: Colors.black, // Text/icon color
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 int _selectedIndex = 0;

 final List<Widget> _pages = [
     Home(),
     StatisticsPage(),
     RoomPage(),
     SettingsPage(),
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
         child: GNav(tabs: [
           GButton(icon: Icons.home_outlined,text: "Home",), 
           GButton(icon: Icons.add_chart_outlined,text: "Statistic",),
           GButton(icon: Icons.dashboard_outlined,text: "Room",),
           GButton(icon: Icons.settings_outlined,text: "Settings",),
         ],
         gap: 8,
         backgroundColor: Colors.white,
         color: Colors.grey[600],
         activeColor: Colors.white,
         tabBackgroundColor: Colors.black,
         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
         selectedIndex: _selectedIndex,
         onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
         },
         ),
        ),
    );
  }
}

