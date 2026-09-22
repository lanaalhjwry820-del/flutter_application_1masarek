import 'package:flutter/material.dart';
import 'account_screen.dart';
import 'projects_screen.dart';

void main() {
  runApp(MasarekApp());
}

class MasarekApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'مَسارِك الجامعي',
      theme: ThemeData(
        primaryColor: Color(0xFF6A1B9A),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 2; // يبدأ من صفحة مشاريعي تلقائياً

  final List<Widget> _widgetOptions = [
    Scaffold(body: Center(child: Text('شاشة الشجرة (قريباً)', style: TextStyle(fontSize: 18)))),
    Scaffold(body: Center(child: Text('شاشة الجهد (قريباً)', style: TextStyle(fontSize: 18)))),
    ProjectsScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 10),
          ],
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.account_tree_outlined),
              label: 'الشجرة',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.speed),
              label: 'الجهد',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder_open_outlined),
              label: 'مشاريعي',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'حسابي',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xFF6A1B9A), // أزرار التبديل السفلية بالبنفسجي
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          unselectedLabelStyle: TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}