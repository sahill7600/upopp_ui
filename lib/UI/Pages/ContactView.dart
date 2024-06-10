import 'package:demo_upopp/Constants/AppColors.dart';
import 'package:demo_upopp/Constants/Localization/LanguageConstants.dart';
import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';
import 'Deals_Details.dart';

class ContactView extends StatelessWidget {
   ContactView({Key? key}) : super(key: key);
  int pageIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black ),
        flexibleSpace: Container(
          color: AppColors.whiteColor,
        ),
        backgroundColor: AppColors.transparent,
        title: Text("contact",
         // getAppBarTitle(),
          style: TextStyle(color: Colors.black)
          //AppTextStyles.textStyle18OffWhite400(),
        ),
        centerTitle: true,
      ),
      extendBody: true,
      floatingActionButton: FloatingActionButton(shape: CircleBorder(),
        onPressed: () {},backgroundColor: Color( 0xFF65CAE4),
        child: const Icon(Icons.camera_alt,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: HomePageButtonNavigationBar(currentIndex: 0, onTap: (int ) {  },),
      body:
      SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0,left: 15),
            child: Column(
              children: [
                Container(height: 120,width: 320,alignment: Alignment.topLeft,
                  child: InkWell(
                    child: Image(
                      image: AssetImage('assets/assetsimages/rewards.png',), fit: BoxFit.contain,
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Deals_Details(),),
                      );
                    },
                  ),
                ),
                SizedBox(height: 5,),
                InkWell(
                  child: Stack(
                    children: [
                      Container(height: 110,width: 320,alignment: Alignment.topLeft,
                        child: const Image(
                          image: AssetImage('assets/assetsimages/rewards1.png',),
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 11.0),
                        child: Container(
                          height: 92,width: 128,
                          child: const Image(
                            image: AssetImage('assets/assetsimages/Maskgroup.png',), fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Deals_Details(),),
                  );},
                ),
                SizedBox(height: 5,),
                InkWell(
                  child: Container(height: 120,width: 320,alignment: Alignment.topLeft,
                    child: Image(
                      image: AssetImage('assets/assetsimages/rewards.png',), fit: BoxFit.contain,
                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Deals_Details(),),
                    );
                  },
                ),
                SizedBox(height: 5,),
                InkWell(
                  child: Stack(
                    children: [
                      Container(height: 110,width: 320,alignment: Alignment.topLeft,
                        child: const Image(
                          image: AssetImage('assets/assetsimages/rewards1.png',),
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 11.0),
                        child: Container(
                          height: 92,width: 128,
                          child: const Image(
                            image: AssetImage('assets/assetsimages/Maskgroup.png',), fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Deals_Details(),),
                    );
                  },
                ),
                SizedBox(height: 5,),
                InkWell(
                  child: Container(height: 120,width: 320,alignment: Alignment.topLeft,
                    child: Image(
                      image: AssetImage('assets/assetsimages/rewards.png',), fit: BoxFit.contain,
                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Deals_Details(),),
                    );
                  },
                ),
                SizedBox(height: 5,),
                InkWell(
                  child: Stack(
                    children: [
                      Container(height: 110,width: 320,alignment: Alignment.topLeft,
                        child: const Image(
                          image: AssetImage('assets/assetsimages/rewards1.png',),
                          fit: BoxFit.contain,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 11.0),
                        child: Container(
                          height: 92,width: 128,
                          child: const Image(
                            image: AssetImage('assets/assetsimages/Maskgroup.png',), fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Deals_Details(),),
                    );
                  },
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      )
    );
  }

   // Column(
   // children: [
   // SizedBox(
   // height: MediaQuery.of(context).size.width / 2 + 145,
   // child: Stack(
   // children: [
   // Container(
   // height: 300,
   // width: double.infinity,
   // decoration: const BoxDecoration(
   // // gradient: Colors.blue,
   // // color: Colors.green,
   // borderRadius: BorderRadius.only(
   // bottomLeft: Radius.circular(30),
   // bottomRight: Radius.circular(30))),
   // child: Image(
   // image: AssetImage('assets/assetsimages/Maskgroup.png',),
   // fit: BoxFit.contain,
   // ),
   // ),
   // ],
   // ),
   // )
   // ],
   // ),
  String getAppBarTitle() {
    switch (pageIndex) {
      case 0:
        return LanguageConst.home;
      case 1:
        return LanguageConst.about;
      case 2:
        return LanguageConst.contact;
      default:
        return LanguageConst.home;
    }
  }
}
