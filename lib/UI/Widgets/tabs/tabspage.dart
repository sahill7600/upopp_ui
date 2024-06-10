import 'package:flutter/material.dart';
import 'bottom_tabs.dart';

class TabsPage extends StatefulWidget {
  int selectedIndex = 0;

  TabsPage({super.key, required this.selectedIndex});

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      widget.selectedIndex = index;
      _selectedIndex = widget.selectedIndex;
      print(_selectedIndex);
    });
  }
  @override
  void initState() {
    _onItemTapped(widget.selectedIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: IndexedStack(
          index: widget.selectedIndex,
          children: [
            for (final tabItem in TabNavigationItem.items) tabItem.page,
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        //showUnselectedLabels: false,

        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,color: Colors.grey,
            ),
            label: ('Dashboard'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_calendar,color: Colors.grey,),
            label: ('Schedule'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer_rounded,color: Colors.grey,),
            label: ('Urgent Unfilled'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,color: Colors.grey,),
            label: ('Schedule'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline,color: Colors.grey,),
            label: ('Urgent Unfilled'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}