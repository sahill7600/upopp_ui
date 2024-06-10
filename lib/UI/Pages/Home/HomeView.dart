import 'package:demo_upopp/Constants/AppColors.dart';
import 'package:demo_upopp/Controller/Home/HomeViewController.dart';
import 'package:demo_upopp/UI/Pages/Account_pages/Car_Park/Car_Park.dart';
import 'package:demo_upopp/UI/Pages/Account_pages/E_Voucher/E_Voucher.dart';
import 'package:demo_upopp/UI/Pages/Account_pages/POPPoints/POPPoints.dart';
import 'package:demo_upopp/UI/Pages/ContactView.dart';
import 'package:demo_upopp/UI/Pages/Deals_Details.dart';
import 'package:demo_upopp/UI/Pages/Events%20&%20Promotions/Events%20&%20Promotions.dart';
import 'package:demo_upopp/UI/Pages/Events%20&%20Promotions/EventsPromotions_Details.dart';
import 'package:demo_upopp/UI/Pages/Mall_Details.dart';
import 'package:demo_upopp/UI/Pages/Purchase-E-Vouchers/Purchase_Details.dart';
import 'package:demo_upopp/UI/Pages/Purchase-E-Vouchers/Purchase_E_Vouchers.dart';
import 'package:demo_upopp/UI/Pages/RewadsRedem.dart';
import 'package:demo_upopp/UI/Pages/Rewards.dart';
import 'package:demo_upopp/UI/Pages/UOL_Malls.dart';
import 'package:demo_upopp/UI/Widgets/BaseCommonWidget.dart';
import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with BaseCommonWidget {
  HomeViewController model = Get.put(HomeViewController());
  final List<String> _imagePaths = [
    'assets/assetsimages/image (16).png',
    'assets/assetsimages/image (17).png',
    'assets/assetsimages/image (18).png',
    'assets/assetsimages/image (19).png',
    'assets/assetsimages/image (20).png',
    'assets/assetsimages/image (21).png',
    'assets/assetsimages/image (22).png',
    'assets/assetsimages/image (23).png',

    // Add all your image paths here
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: model,
      initState: (state) {},
      builder: (HomeViewController controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Color( 0xFFF8F8F8),
            title: const Image(
              image: AssetImage('assets/assetsimages/appbar.png',), fit: BoxFit.cover,height: 39,width: 125,
            ),
            actions: const <Widget>[
              InkWell(
                child: Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Image(
                    image: AssetImage('assets/assetsimages/appbar1.png'),fit: BoxFit.cover,height: 39,width: 40,
                  ),
                ),
              )
            ], //<Widget>[]
          ),

          extendBody: true,
          floatingActionButton: FloatingActionButton(shape: CircleBorder(),
            onPressed: () {},backgroundColor: Color( 0xFF65CAE4),
            child: const Icon(Icons.camera_alt,color: Colors.white,),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
           bottomNavigationBar: HomePageButtonNavigationBar(currentIndex: 0, onTap: (int ) {  },),
          backgroundColor: AppColors.backgroundColor,
          body: _getBody(),
        );
      },
    );
  }

  Widget _getBody() {

    return Stack(
      children: <Widget>[
        _getBaseContainer(),
        getProgressBar(model.state),
      ],
    );
  }

  Widget _getBaseContainer() {
    return  SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 10.0,bottom: 3),
              child: Container(alignment: Alignment.topLeft,
                  child: Text("Welcome, Haydee",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,),)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.min,
             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [

                InkWell(
                  child: Image.asset(
                    'assets/assetsimages/image (2).png', // Replace with your wheel image
                     width: 167,
                     height: 98,
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => POPPoints(),),
                    );
                  },
                ),
                SizedBox(width: 5,),
                InkWell(
                  child: Image.asset(
                    'assets/assetsimages/image (1).png', // Replace with your wheel image
                     width: 167,
                     height: 98,
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Car_Park(),),
                    );
                  },
                ),

              ],

            ),
            SizedBox(height: 5,),
            Container(
             margin: EdgeInsets.all(10),
              child:  InkWell(
                child: Image.asset(
                  'assets/assetsimages/image (3).png', // Replace with your wheel image
                  // width: 167,
                  // height: 98,
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => E_Voucher(),),
                  );
                },
              ),
            ),
            SizedBox(height: 8,),
            Padding(
              padding: EdgeInsets.only(left: 10.0,right: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Explore UPOPP",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,)),
                  Text("Edit Tiles",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,))
                ],
              ),
            ),
            SizedBox(height: 8,),
            SizedBox(
              height: 175,width: 350,
              child: ReorderableGridView.count(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 4,
                children:
                _imagePaths.map((path) => Image.asset(path, key: ValueKey(path),),)
                    .toList(),
                onReorder: (oldIndex, newIndex) {
                  setState(() {
                    if (oldIndex < newIndex) {
                      newIndex -= 1;
                    }
                    final String path = _imagePaths.removeAt(oldIndex);
                    _imagePaths.insert(newIndex, path);

                  });
                },
              ),
            ),
            SizedBox(height: 8,),
            // Stack(
            //   alignment: Alignment.center,
            //   children: [
            //     const Divider(indent: 15,endIndent: 15,),
            //     Container(
            //       padding: const EdgeInsets.all(8.0),
            //       decoration: BoxDecoration(
            //         color: Theme.of(context).scaffoldBackgroundColor,
            //       ),
            //       child: Container(alignment: Alignment.center,
            //         height: 24,width: 85,
            //         child: Image(
            //           image: AssetImage('assets/assetsimages/Group 14273.png',), fit: BoxFit.cover,height: 24,width: 85,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(height: 5,),
            Stack(
              alignment: Alignment.center,
              children: [
                const Divider(indent: 15,endIndent: 15,),
                Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    child:Text("HIGHLIGHTS",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600))
                ),
              ],
            ),
            //    SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 8),
              child: SizedBox(
                height: 220, width: 342,
                child:
                ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  //      scrollDirection: Axis.vertical,
                  children: <Widget>[
                    model.horizontalList1,
                  ],),
                // Image(
                //   image: AssetImage('assets/assetsimages/Rectangle 530.png',), fit: BoxFit.contain,
                // ),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.only(left: 10.0,right: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Rewards",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,)),
                  InkWell(child: Text("VIEW ALL",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,)),
                    onTap:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RewardScreen(),),
                      );
                    },)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                height: 310,width: 684,
                child:
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(width: 320.0,
                      child: InkWell(
                        child: Image(
                          image: AssetImage('assets/assetsimages/rewards5.png',), fit: BoxFit.fill,),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RewadsRedem(),),
                          );
                        },
                      ),
                    ),SizedBox(width: 5,),
                    Container(width: 342.0,
                      child: InkWell(
                        child: Image(
                          image: AssetImage('assets/assetsimages/rewards5.png',), fit: BoxFit.contain,
                        ),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RewadsRedem(),),
                          );
                        },
                      ),
                    ),SizedBox(width: 5,),
                    Container(width: 342.0,
                      child: Image(
                        image: AssetImage('assets/assetsimages/rewards5.png',), fit: BoxFit.contain,
                      ),
                    ),SizedBox(width: 5,),
                    Container(width: 342.0,
                      child: Image(
                        image: AssetImage('assets/assetsimages/rewards5.png',), fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ))
                // ListView(
                //   shrinkWrap: true,
                //   physics: const BouncingScrollPhysics(),
                //   //    scrollDirection: Axis.vertical,
                //   children: <Widget>[
                //     model.horizontalList2,
                //   ],),
                // Image(
                //   image: AssetImage('assets/assetsimages/Group 14319.png',), fit: BoxFit.contain,
                // ),
             // ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.only(left: 10.0,right: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Deals",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,)),
                  InkWell(child: Text("VIEW ALL",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,)),
                    onTap:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactView(),),
                      );
                    },)
                ],
              ),
            ),
            SizedBox(height: 5,),
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
                  );},
              ),
            ),
            SizedBox(height: 5,),
            Stack(
              children: [
                InkWell(
                  child: Container(height: 110,width: 320,alignment: Alignment.topLeft,
                    child: const Image(
                      image: AssetImage('assets/assetsimages/rewards1.png',),
                      fit: BoxFit.contain,
                    ),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Deals_Details(),),
                    );},
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11.0),
                  child: Container(
                    height: 92,width: 128,
                    child: InkWell(
                      child: const Image(
                        image: AssetImage('assets/assetsimages/Maskgroup.png',), fit: BoxFit.cover,
                      ),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Deals_Details(),),
                        );},
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(left: 10.0,right: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Purchase E-Vouchers",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,)),
                  InkWell(child: Text("VIEW ALL",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,)),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Purchase_E_Vouchers(),),
                    );
                  },)
                ],
              ),
            ),
            SizedBox(height:10,),
            Container(height: 110,width: 320,alignment: Alignment.topLeft,
              child: InkWell(
                child: Image(
                  image: AssetImage('assets/assetsimages/rewards2.png',), fit: BoxFit.contain,
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Purchase_Details(),),
                  );
                },
              ),
            ),
            SizedBox(height: 10,),
            Container(height: 110,width: 320,alignment: Alignment.topLeft,
              child: InkWell(
                child: Image(
                  image: AssetImage('assets/assetsimages/rewards3.png',), fit: BoxFit.contain,
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Purchase_Details(),),
                  );
                },
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Events & Promotions",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,)),
                  InkWell(child: Text("VIEW ALL",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,)),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EventsPromotions(),),
                    );
                  },)
                ],
              ),
            ),
            //   SizedBox(height: 5,),
            // Container(
            //   height: 300,width: 342,
            //   child: InkWell(child: Image(image: AssetImage('assets/assetsimages/rewards4.png',), fit: BoxFit.contain,),
            //   onTap: (){
            //     Navigator.push(
            //         context ,
            //         MaterialPageRoute(
            //             builder: (context) => EventsPromotions_Details()));
            //   },
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 8),
              child: SizedBox(
                height: 340, width: 342,
                child:
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(width: 342.0,
                      child: InkWell(
                        child: Image(
                          image: AssetImage('assets/assetsimages/rewards4.png',), fit: BoxFit.fill,
                        ),
                        onTap: (){
                          Navigator.push(
                              context ,
                              MaterialPageRoute(
                                  builder: (context) => EventsPromotions_Details()));

                          print("object");
                        },
                      ),
                    ),SizedBox(width: 5,),
                    Container(width: 342.0,
                      child: InkWell(
                        child: Image(
                          image: AssetImage('assets/assetsimages/rewards4.png',), fit: BoxFit.contain,
                        ),
                        onTap: (){
                          Navigator.push(
                              context ,
                              MaterialPageRoute(
                                  builder: (context) => EventsPromotions_Details()));

                          print("object");
                        },
                      ),
                    ),SizedBox(width: 5,),
                    Container(width: 342.0,
                      child: InkWell(
                        child: Image(
                          image: AssetImage('assets/assetsimages/rewards4.png',), fit: BoxFit.contain,
                        ),
                        onTap: (){
                          Navigator.push(
                              context ,
                              MaterialPageRoute(
                                  builder: (context) => EventsPromotions_Details()));

                          print("object");
                        },
                      ),
                    ),SizedBox(width: 5,),
                    Container(width: 342.0,
                      child: InkWell(
                        child: Image(
                          image: AssetImage('assets/assetsimages/rewards4.png',), fit: BoxFit.contain,
                        ),
                        onTap: (){
                          Navigator.push(
                              context ,
                              MaterialPageRoute(
                                  builder: (context) => EventsPromotions_Details()));

                          print("object");
                        },
                      ),
                    ),
                  ],
                ))
                // ListView(
                //   shrinkWrap: true,
                //   physics: const BouncingScrollPhysics(),
                //   //      scrollDirection: Axis.vertical,
                //   children: <Widget>[
                //     model.horizontalList3,
                //   ],),
                // Image(
                //   image: AssetImage('assets/assetsimages/Rectangle 530.png',), fit: BoxFit.contain,
                // ),
            //  ),
            ),
            //   SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Explore UOL Malls",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,)),
                  InkWell(child: Text("VIEW ALL",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,)),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UOL_Malls(),),
                    );
                  },)
                ],
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(children: [
                Container(
                  height: 82,width: 108,
                  child: InkWell(
                    child: Image(
                      image: AssetImage('assets/assetsimages/Frame 14196.png',), fit: BoxFit.contain,
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Mall_Details(),),
                      );
                    },
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  height: 82,width: 108,
                  child: InkWell(
                    child: Image(
                      image: AssetImage('assets/assetsimages/Frame 14197.png',), fit: BoxFit.contain,
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Mall_Details(),),
                      );
                    },
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  height: 82,width: 108,
                  child: InkWell(
                    child: Image(
                      image: AssetImage('assets/assetsimages/Frame 14198.png',), fit: BoxFit.contain,
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Mall_Details(),),
                      );
                    },
                  ),
                ),
              ],),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }



}

