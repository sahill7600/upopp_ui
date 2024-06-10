import 'package:demo_upopp/UI/Pages/AboutView.dart';
import 'package:demo_upopp/UI/Pages/ContactView.dart';
import 'package:demo_upopp/UI/Pages/Home/HomeView.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class BottomNavBar extends StatefulWidget {
  int? index = 0;
  Function? onTap;
  bool inMainPage;
  bool? isFromList;
  Key? key;

  BottomNavBar(
      {this.key,
      this.index,
      this.onTap,
      this.inMainPage = true,
      this.isFromList})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavBar createState() =>  _BottomNavBar();
}

class _BottomNavBar extends State<BottomNavBar> {
  bool? isKhataUser;

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.white,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.black,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(bodySmall:  TextStyle(color: Colors.black))),
        // sets the inactive color of the `BottomNavigationBar`
        child:  BottomNavigationBar(


          // type: BottomNavigationBarType.fixed,
          // selectedItemColor: Colors.lightGreen[400],
          // //  selectedItemColor: Colors.black,
          // unselectedItemColor: Colors.white,
          // showSelectedLabels: true,
          // showUnselectedLabels: false,
          // // backgroundColor: Colors.black12,
          // backgroundColor: Colors.white30,
          // selectedFontSize: 14,
          // selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          // unselectedFontSize: 10,
          // currentIndex: currentTab,

          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          selectedItemColor: Colors.black,

         unselectedItemColor: Colors.black,
      //     unselectedLabelStyle: const TextStyle(
      //         color: Colors.white,
      //         fontSize: 10.0,
      //         fontWeight: FontWeight.normal,
      //         ) ,
      //     selectedLabelStyle: const TextStyle(
      //   //      color: Colors.amber,
      //         fontSize: 10.0,
      //         fontWeight: FontWeight.normal,
      //         ),
          items:  [

            BottomNavigationBarItem(

              icon:  Icon(Icons.home,),
              // ImageButton(
              //   isPNG: false,
              //   icon: (this.widget.index == 0)
              //       ?
              //   AppIcons.bottomBarHomeIconSvg
              //       : AppIcons.bottomBarDarkHomeIconSvg,
              //   // AppIcons.home_Bottomnav
              //   //     : AppIcons.home_Bg,
              //   height: 24.0,
              //   width: 24.0,
              // ),
       // activeIcon:Icon(Icons.home_work,color: Colors.black,),

              label: ('Home'),
            ),
            BottomNavigationBarItem(
            //  icon: Icon(Icons.edit_calendar,color: Colors.grey,),
              icon:
              (this.widget.index == 0)
                  ?Icon(Icons.schedule,): Icon(Icons.schedule_send,),
              label: ('Schedule'),
            ),
            BottomNavigationBarItem(
              //  icon: Icon(Icons.edit_calendar,color: Colors.grey,),
              icon: (this.widget.index == 0)
                  ?Icon(Icons.calendar_month,): Icon(Icons.calendar_today_outlined,),
       //       Image.asset(AppIcons.bottomBarNewsFeedIconSvg,height: 24,width: 24,),
             // activeIcon: Image.asset(AppIcons.bottomBarDarkNewsFeedIconSvg,height: 24,width: 24,),
              //   SvgPicture.asset(
              //     AppIcons.job_Bg,
              //   ),
              label: ('calendar'),
            ),
            BottomNavigationBarItem(
              //  icon: Icon(Icons.edit_calendar,color: Colors.grey,),
              icon: (this.widget.index == 0)
                ?Icon(Icons.search,): Icon(Icons.search_off,),
          //    Image.asset(AppIcons.bottomBarServarchFundIconSvg,height: 24,width: 24,),
             // activeIcon: Image.asset(AppIcons.bottomBarDarkSearchFundIconSvg,height: 24,width: 24,),
              //   SvgPicture.asset(
              //     AppIcons.job_Bg,
              //   ),
              label: ('Search'),
            ),
            BottomNavigationBarItem(
             // icon: Icon(Icons.person_outline,color: Colors.grey,),
              icon: (this.widget.index == 0)
               ?Icon(Icons.person,): Icon(Icons.person_off),
              // SvgPicture.asset(
              //   AppIcons.logOutIconSvg,
              // ),
              // activeIcon:
              // SvgPicture.asset(
              //   AppIcons.homeDrawerIconSvg,
              // ),
              label: ('profile'),
            ),
          ],
          currentIndex: widget.index!,
          onTap:
              (index) {
            if (widget.index != index || !widget.inMainPage) {
              switch (index) {
                case 0:
                  WidgetsBinding.instance.addPostFrameCallback((_){
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomeView()),
                          (Route<dynamic> route) => false,
                    );
                  });

                  break;
                case 1:
                  WidgetsBinding.instance.addPostFrameCallback((_){

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  AboutView(),
                          settings: const RouteSettings(name: '/JobView')),
                    );
                  });
                  break;
                case 2:
                  // if (isKhataUser!) {
                  WidgetsBinding.instance.addPostFrameCallback((_){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactView(),),
                    );
                  });
                  // } else {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => StoreHomePage()),
                  //   );
                  // }
                  break;
                case 3:
                  // if (isKhataUser!) {
                  WidgetsBinding.instance.addPostFrameCallback((_){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeView()),
                    );
                  });
                  // } else {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => OrderList()),
                  //   );
                  // }
                  break;
                case 4:
                // if (isKhataUser!) {
                  WidgetsBinding.instance.addPostFrameCallback((_){

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  AboutView(),),
                    );
                  });

                // } else {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => OrderList()),
                //   );
                // }
                  break;
              }
            }
          },
        ));
  }
}
