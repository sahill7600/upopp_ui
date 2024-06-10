import 'package:demo_upopp/UI/Pages/AboutView.dart';
import 'package:demo_upopp/UI/Pages/Account.dart';
import 'package:demo_upopp/UI/Pages/ContactView.dart';
import 'package:demo_upopp/UI/Pages/Home/HomeView.dart';
import 'package:demo_upopp/UI/Pages/Rewards.dart';
import 'package:flutter/material.dart';

class HomePageButtonNavigationBar extends StatelessWidget {
  final Function(int) onTap;
  final int currentIndex;
  int currentTab = 0;
   HomePageButtonNavigationBar({Key? key, required this.currentIndex, required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 60,
        color: Colors.white,
      //  notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                 //   color: Colors.black,
                  ),
                  Text("Home")
                ],
              ),
              onTap: () {
                WidgetsBinding.instance.addPostFrameCallback(
                  (_) {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomeView()),
                      (Route<dynamic> route) => false,
                    );
                  },
                );
              }),
          InkWell(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(
                      'assets/assetsimages/rewardsicon.png',
                    ),
                    fit: BoxFit.contain,
                    width: 24,
                    height: 24,
                  ),
                  Text("Rewards")
                ],
              ),
              onTap: () {
                WidgetsBinding.instance.addPostFrameCallback(
                  (_) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RewardScreen(),
                          settings: const RouteSettings(name: '/JobView')),
                    );
                  },
                );
              }),
          InkWell(
              child: Container(alignment: Alignment.bottomCenter,margin: EdgeInsets.only(bottom: 7),
                  child: Text("Scan")),
              onTap: () {
                WidgetsBinding.instance.addPostFrameCallback(
                      (_) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AboutView(),
                          settings: const RouteSettings(name: '/JobView')),
                    );
                  },
                );
              },
            ),
          InkWell(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/assetsimages/Group14.png',),
                    fit: BoxFit.contain,width: 24,height: 24,),
                  Text("Deals")
                ],
              ),
              onTap: () {
                WidgetsBinding.instance.addPostFrameCallback((_){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContactView(),),
                  );
                });
              },
            ),
          InkWell(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/assetsimages/Group15.png',),
                    fit: BoxFit.contain,width: 24,height: 24,),
                  Text("Account")
                ],
              ),
              onTap: () {
                WidgetsBinding.instance.addPostFrameCallback((_){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountScreen(),),
                  );
                });
              },
            ),
          ],
        ),
      );

  }

}