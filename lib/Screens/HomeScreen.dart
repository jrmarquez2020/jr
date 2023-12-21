import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
int currentPageIndex = 0;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.purple,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home_filled),
            icon: Icon(Icons.home_filled),
            label: 'Plan',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.library_books_outlined),
            icon: Badge(child: Icon(Icons.library_books_outlined)),
            label: 'library',
          ),
          // NavigationDestination(
          //   icon: Badge(
             
          //     child: Icon(Icons.messenger_sharp),
          //   ),
          //   label: 'challenges',
          // ),
        ],
      ),

   body: <Widget>[
        /// Home page
        Card(
          
        ),

        /// library
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[ ],
          ),
        ),

       
      ][currentPageIndex],
    );
  }
}