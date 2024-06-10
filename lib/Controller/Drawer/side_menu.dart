import 'package:demo_upopp/Constants/AppColors.dart';
import 'package:demo_upopp/Constants/Localization/LanguageConstants.dart';
import 'package:demo_upopp/Constants/SizeConfig.dart';
import 'package:demo_upopp/UI/Pages/AboutView.dart';
import 'package:demo_upopp/UI/Pages/ContactView.dart';
import 'package:demo_upopp/UI/Pages/Home/HomeView.dart';
import 'package:demo_upopp/UI/Pages/Login/LoginView.dart';
import 'package:flutter/material.dart';


import '../../Constants/AppIcons.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  //LoginScreenController model = Get.put(LoginScreenController());
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
        //    physics: NeverScrollableScrollPhysics(),
            children: [

      Container(
        height: SizeConfig.relativeHeight(15.5),
        child:
        DrawerHeader(
          padding: EdgeInsets.only(left: 10,top: 5),
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(AppIcons.image),
                foregroundImage: AssetImage(AppIcons.ringImage),
                radius: 45.0,
              ),
              // Align(
              //   alignment: Alignment.topCenter + Alignment(0, .6),
              //   child: Text(
              //    // LanguageConst.nameDrawer,
              //     model.companyName.toString(),
              //    // model.editProfileData!.name ?? "",
              // //    "",
              //     style: TextStyle(color:AppColors.blackColor, fontSize: 18.0),
              //   ),
              // ).paddingOnly(left: 50.0),
              // Align(
              //   alignment: Alignment.topCenter + Alignment(0, .9),
              //   child: Text(
              //   //  model.editProfileData!.role ?? "",
              //     LanguageConst.companyDrawer,
              //    // "",
              //     style: const TextStyle(
              //       color: AppColors.lightBlack,
              //     ),
              //   ),
              // ).paddingOnly(left: 20.0,top: 10.0),
             // SizeConfig.horizontalSpacer(2),
             // SizeConfig.verticalSpacer(2),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Demo",
                     //LanguageConst.nameDrawer,
                   // model.userName.toString(),
                //    model.companyName.toString(),
                    // model.editProfileData!.name ?? "",
                    //    "",
                    style: TextStyle(color:AppColors.blackColor, fontSize: 18.0),
                  ),
                  Text("companyDrawer",
                    //  model.editProfileData!.role ?? "",
                 //   LanguageConst.companyDrawer,
                    // "",
                    style: const TextStyle(
                      color: Colors.black
                      //AppColors.lightBlack,
                    ),
                  ),
                ],
              ),
              Image(image: AssetImage(AppIcons.arrowImage,),height: 30,width: 30,)

              // GestureDetector(
              //   child: Image.asset(AppIcons.arrowImage,
              //     height: 30,
              //     width: 30,
              //   ),
              //   onTap: () {}
              //     ///Switch user for company admin and HOD
              //   // => showDialog(context: context, builder: (BuildContext context){
              //   //   return AlertDialog(
              //   //     title: Column(
              //   //       children: [
              //   //         InkWell(
              //   //           onTap: () {
              //   //             print("click");
              //   //           },
              //   //           child: Row(
              //   //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   //             children: [
              //   //                CircleAvatar(
              //   //                 backgroundColor: Colors.white,
              //   //                 foregroundImage: AssetImage(AppIcons.ringImage),
              //   //                 radius: 25.0,
              //   //                 child:
              //   //                 Image.asset(AppIcons.fieldConnectIcon,
              //   //                   height: SizeConfig.relativeHeight(7.5),
              //   //                   width: SizeConfig.relativeWidth(7.5),
              //   //                 ),
              //   //               ),
              //   //               SizeConfig.horizontalSpacer(2),
              //   //               Column(
              //   //                 mainAxisAlignment: MainAxisAlignment.start,
              //   //                 crossAxisAlignment: CrossAxisAlignment.start,
              //   //                 children: [
              //   //                   Text(LanguageConst.verve,style: TextStyle(color:AppColors.blackColor,
              //   //                       fontSize: SizeConfig.setSp(16)),),
              //   //                   Text(
              //   //                     LanguageConst.companyDrawer,
              //   //                     style:  TextStyle(color: AppColors.lightBlack,fontSize: SizeConfig.setSp(14)
              //   //                     ),
              //   //                   ),
              //   //                 ],
              //   //               ),
              //   //               SizeConfig.horizontalSpacer(7.0),
              //   //               Container(
              //   //                 height: SizeConfig.relativeHeight(7.5),
              //   //                 width: SizeConfig.relativeWidth(7.5),
              //   //                 decoration: BoxDecoration(
              //   //                   image: DecorationImage(
              //   //                     image: AssetImage(AppIcons.jobCardIcon,),
              //   //                     alignment: Alignment.centerRight,
              //   //                   ),
              //   //                 ),
              //   //                 child:
              //   //                 Container(
              //   //                   margin: EdgeInsets.only(left: 12,bottom: 24),
              //   //                   padding: EdgeInsets.zero,
              //   //                   decoration: const BoxDecoration(
              //   //                     shape: BoxShape.circle,
              //   //                     color: AppColors.purpelLinearColor,
              //   //                   ),
              //   //                   child:Column(
              //   //                     crossAxisAlignment: CrossAxisAlignment.center,
              //   //                     mainAxisAlignment: MainAxisAlignment.center,
              //   //                     children: <Widget>[
              //   //                       Text(LanguageConst.num20,style: TextStyle( color: AppColors.backgroundColor,
              //   //                           fontSize: SizeConfig.setSp(8)),),
              //   //                     ],
              //   //                   ),
              //   //                 ),
              //   //                 // child: Container(
              //   //                 //   margin: EdgeInsets.only(left: 12,bottom: 24),
              //   //                 //   padding: EdgeInsets.zero,
              //   //                 //   decoration: const BoxDecoration(
              //   //                 //     shape: BoxShape.circle,
              //   //                 //     color: AppColors.purpelLinearColor,
              //   //                 //   ),
              //   //                 //   child:Column(
              //   //                 //     crossAxisAlignment: CrossAxisAlignment.center,
              //   //                 //     mainAxisAlignment: MainAxisAlignment.center,
              //   //                 //     children: <Widget>[
              //   //                 //       Text(LanguageConst.num20,style: TextStyle( color: AppColors.backgroundColor,
              //   //                 //           fontSize: SizeConfig.setSp(8)),),
              //   //                 //     ],
              //   //                 //   ),
              //   //                 // ),
              //   //               )
              //   //             ],
              //   //           ),
              //   //         ),
              //   //         SizeConfig.verticalSpacer(3),
              //   //         InkWell(
              //   //           onTap: () {
              //   //             print("click1");
              //   //           },
              //   //           child: Row(
              //   //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   //             children: [
              //   //               CircleAvatar(
              //   //                 backgroundColor: Colors.white,
              //   //                 foregroundImage: AssetImage(AppIcons.ringImage),
              //   //                 radius: 25.0,
              //   //                 child:
              //   //                 Image.asset(AppIcons.fieldConnectIcon,
              //   //                   height: SizeConfig.relativeHeight(7.5),
              //   //                   width: SizeConfig.relativeWidth(7.5),
              //   //                 ),
              //   //               ),
              //   //               SizeConfig.horizontalSpacer(2),
              //   //               Column(
              //   //                 mainAxisAlignment: MainAxisAlignment.start,
              //   //                 crossAxisAlignment: CrossAxisAlignment.start,
              //   //                 children: [
              //   //                   Text(LanguageConst.verve,style: TextStyle(color:AppColors.blackColor,
              //   //                       fontSize: SizeConfig.setSp(16)),),
              //   //                   Text(
              //   //                     LanguageConst.hod,
              //   //                     style:  TextStyle(color: AppColors.lightBlack,fontSize: SizeConfig.setSp(14)
              //   //                     ),
              //   //                   ),
              //   //                 ],
              //   //               ),
              //   //               SizeConfig.horizontalSpacer(7.0),
              //   //               Container(
              //   //                 height: SizeConfig.relativeHeight(7.5),
              //   //                 width: SizeConfig.relativeWidth(7.5),
              //   //                 decoration: BoxDecoration(
              //   //                   image: DecorationImage(
              //   //                     image: AssetImage(AppIcons.jobCardIcon,),
              //   //                     alignment: Alignment.centerRight,
              //   //                   ),
              //   //                 ),
              //   //                 child: Container(
              //   //                   margin: EdgeInsets.only(left: 12,bottom: 24),
              //   //                   padding: EdgeInsets.zero,
              //   //                   decoration: const BoxDecoration(
              //   //                     shape: BoxShape.circle,
              //   //                     color: AppColors.purpelLinearColor,
              //   //                   ),
              //   //                   child:Column(
              //   //                     crossAxisAlignment: CrossAxisAlignment.center,
              //   //                     mainAxisAlignment: MainAxisAlignment.center,
              //   //                     children: <Widget>[
              //   //                       Text(LanguageConst.num8,style: TextStyle( color: AppColors.backgroundColor,
              //   //                           fontSize: SizeConfig.setSp(8)),),
              //   //                     ],
              //   //                   ),
              //   //                 ),
              //   //               )
              //   //             ],
              //   //           ),
              //   //         ),
              //   //         SizeConfig.verticalSpacer(3),
              //   //         InkWell(
              //   //           onTap: () {
              //   //             print("click2");
              //   //           },
              //   //           child: Row(
              //   //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   //             children: [
              //   //               CircleAvatar(
              //   //                 backgroundColor: Colors.white,
              //   //                 foregroundImage: AssetImage(AppIcons.ringImage),
              //   //                 radius: 25.0,
              //   //                 child:
              //   //                 Image.asset(AppIcons.fieldConnectIcon,
              //   //                   height: SizeConfig.relativeHeight(7.5),
              //   //                   width: SizeConfig.relativeWidth(7.5),
              //   //                 ),
              //   //               ),
              //   //               SizeConfig.horizontalSpacer(2),
              //   //               Column(
              //   //                 mainAxisAlignment: MainAxisAlignment.start,
              //   //                 crossAxisAlignment: CrossAxisAlignment.start,
              //   //                 children: [
              //   //                   Text(LanguageConst.verve,style: TextStyle(color:AppColors.blackColor,
              //   //                       fontSize: SizeConfig.setSp(16)),),
              //   //                   Text(
              //   //                     LanguageConst.fieldAgent,
              //   //                     style:  TextStyle(color: AppColors.lightBlack,fontSize: SizeConfig.setSp(14)
              //   //                     ),
              //   //                   ),
              //   //                 ],
              //   //               ),
              //   //               SizeConfig.horizontalSpacer(7.0),
              //   //               Container(
              //   //                 height: SizeConfig.relativeHeight(7.5),
              //   //                 width: SizeConfig.relativeWidth(7.5),
              //   //                 decoration: BoxDecoration(
              //   //                   image: DecorationImage(
              //   //                     image: AssetImage(AppIcons.jobCardIcon,),
              //   //                     alignment: Alignment.centerRight,
              //   //                   ),
              //   //                 ),
              //   //                 child: Container(
              //   //                   margin: EdgeInsets.only(left: 12,bottom: 24),
              //   //                   padding: EdgeInsets.zero,
              //   //                   decoration: const BoxDecoration(
              //   //                     shape: BoxShape.circle,
              //   //                     color: AppColors.purpelLinearColor,
              //   //                   ),
              //   //                   child:Column(
              //   //                     crossAxisAlignment: CrossAxisAlignment.center,
              //   //                     mainAxisAlignment: MainAxisAlignment.center,
              //   //                     children: <Widget>[
              //   //                       Text(LanguageConst.num2,style: TextStyle( color: AppColors.backgroundColor,
              //   //                           fontSize: SizeConfig.setSp(8)),),
              //   //                     ],
              //   //                   ),
              //   //                 ),
              //   //               )
              //   //             ],
              //   //           ),
              //   //         ),
              //   //       ],
              //   //     ),
              //   //
              //   //   );
              //   // })
              // ),
            ],
          ),
        ),
      ),

      ListTile(
        leading: Icon(Icons.home),
        // SvgPicture.asset(
        //   AppIcons.homeIcon,
        // ),
        title: Text('Home'),
        onTap: () =>
            WidgetsBinding.instance.addPostFrameCallback((_){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeView()),
                );
            })

      ),
      ListTile(
        leading:Icon(Icons.screen_lock_landscape),
        //Image.asset(AppIcons.menuJobIcon,cacheHeight: 48, ),
      //  SvgPicture.asset(AppIcons.job,),
        title: Text('Jobs'),

        onTap: () =>
                WidgetsBinding.instance.addPostFrameCallback((_){

                    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => AboutView()),
                    );
                })
      ),
      ListTile(
        leading: Icon(Icons.menu_book_outlined),
        //Image.asset(AppIcons.menuAgentIcon, ),
        // SvgPicture.asset(
        //   AppIcons.ag,
        // ),
        title: Text('Agents'),
        onTap: () =>
            WidgetsBinding.instance.addPostFrameCallback((_){

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ContactView()),
              );
            })

      ),
      ListTile(
        leading: Icon(Icons.business_center_rounded),
        //Image.asset(AppIcons.menuCompanyIcon,cacheHeight: 48,),
        title: Text('Company'),
        onTap: () =>
            WidgetsBinding.instance.addPostFrameCallback((_){

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeView()),
              );
            })

      ),
      ListTile(
        leading: Icon(Icons.person),
        // SvgPicture.asset(
        //   AppIcons.profile,
        // ),
        title: Text('Profile'),
        onTap: () =>
            WidgetsBinding.instance.addPostFrameCallback((_){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ContactView()),
              );
            })
      ),
      ListTile(
        leading:Icon(Icons.account_box),
        //Image.asset(AppIcons.about,cacheHeight: 48,),
        title: Text('About us'),
        onTap: () => {
        },
      ),
      ListTile(
        leading:Icon(Icons.contact_phone),
        // SvgPicture.asset(
        //   AppIcons.contactIcon,
        // ),
        title: Text('Contact us'),
        onTap: () => {

        },
      ),
      ListTile(
        leading:Icon(Icons.logout),
        // SvgPicture.asset(
        //   AppIcons.logoutIcon,
        // ),
        title: Text('Logout'),
        onTap: () => {
          WidgetsBinding.instance.addPostFrameCallback((_){

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginView()),
            );
          })
       //model.redirectToPage(loginScreenRoute)

        },
      ),

      Image(image: AssetImage(AppIcons.apexlogobgIcon,),
        height: SizeConfig.relativeHeight(12.0),
      ),
         //   SvgPicture.asset( AppIcons.group,),
          SizeConfig.verticalSpacer(2.5),
          Center(child: Text(LanguageConst.version, style: TextStyle(color: AppColors.blackColor),))
    ]));
  }
}
