import 'package:flutter/material.dart';

import '../../Pages/AboutView.dart';
import '../../Pages/ContactView.dart';
import '../../Pages/Home/HomeView.dart';


class TabNavigationItem {
  final Widget page;
  final Widget title;
  final Icon icon;

  TabNavigationItem({required this.page, required this.title, required this.icon});

  static List<TabNavigationItem> get items => [
    TabNavigationItem(
      page: HomeView(),
      icon: Icon(Icons.dashboard),
      title: Text("Dashboard"),
    ),
    TabNavigationItem(
      page: AboutView(),
      icon: Icon(Icons.edit_calendar),
      title: Text("Schedule"),
    ),
    TabNavigationItem(
      page: ContactView(),
      icon: Icon(Icons.home),
      title: Text("Urgent Unfilled"),
    ),
    TabNavigationItem(
      page: HomeView(),
      icon: Icon(Icons.home),
      title: Text("Urgent Unfilled"),
    ),
    TabNavigationItem(
      page: AboutView(),
      icon: Icon(Icons.home),
      title: Text("Urgent Unfilled"),
    ),

  ];
}