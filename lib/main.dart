import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pyramid_developer/screens/explore/explore_screen.dart';
import 'package:pyramid_developer/theme/app_color.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const BottomNavigationBarExample(),
        // '/categories': (context) => const Categories()
      },
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 64,
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(100.0)),
          child: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: const Color.fromARGB(255, 0, 0, 0),
            ),
            child: GNav(
              tabMargin:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              padding: const EdgeInsets.all(10),
              activeColor: const Color.fromARGB(255, 0, 0, 0),
              gap: 8,
              tabBackgroundColor: AppColorScheme().tabBackground,
              color: Colors.white,
              backgroundColor: AppColorScheme().navBackground,
              tabs: const [
                GButton(
                  icon: Icons.home_filled,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.rocket_launch_outlined,
                  text: 'Explore',
                ),
                GButton(
                  icon: Icons.bar_chart_outlined,
                  text: 'Stats',
                ),
                GButton(
                  icon: Icons.person_outline_outlined,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    ExploreScreen(),
    Text('Stats'),
    Text('Profile'),
  ];
}
