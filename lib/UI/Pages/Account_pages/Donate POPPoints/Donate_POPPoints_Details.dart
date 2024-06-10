import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'Donate_POPPoints_success.dart';


class Donate_POPPoints_Details extends StatefulWidget {
  const Donate_POPPoints_Details({super.key});

  @override
  State<Donate_POPPoints_Details> createState() => _Donate_POPPoints_DetailsState();
}

class _Donate_POPPoints_DetailsState extends State<Donate_POPPoints_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(180),
      //   child: AppBar(
      //     centerTitle: true,
      //     flexibleSpace: ClipRRect(
      //       child: Container(
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //             image: AssetImage("assets/assetsimages/Rectangle 529.png"),
      //               fit: BoxFit.fill
      //           )
      //         ),
      //       ),
      //     ),
      //       actions: [Padding(
      //         padding: const EdgeInsets.only(right: 10.0),
      //         child: Image(image: AssetImage( 'assets/assetsimages/Frame 1420211.png'),height: 25,width: 75,),
      //       )]
      //
      //   ),
      // ),
        body:SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Image(image: AssetImage("assets/assetsimages/Rectangle 529 (1).png"),fit: BoxFit.fill,height: 200,width: 390,),
                Padding(
                  padding: const EdgeInsets.only(top: 140.0,left: 20,right: 20),
                  child: Container(width: 355,height: 336,
                    child: Card(
                      child:  Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0,right: 30,top: 30,bottom: 10),
                            child: Image(image: AssetImage( 'assets/assetsimages/image (42).png'),),
                          ),
                          Dash(
                              direction: Axis.horizontal,
                              length: 270,
                              dashLength: 8,
                              dashColor: Colors.grey),
                          SizedBox(height: 10,),
                          Image(image: AssetImage( 'assets/assetsimages/Frame 142166.png'),fit: BoxFit.fill,height: 19,width: 115,),
                          SizedBox(height: 10,),
                          Text("Available POPPoints: 4,200",style: TextStyle(fontSize: 11),),
                          SizedBox(height: 10,),
                          Image(image: AssetImage( 'assets/assetsimages/Group 14150.png'),fit: BoxFit.fill,height: 39,width: 285 ,),
                          SizedBox(height: 20,),
                          Container(width: 200,
                            child: ElevatedButton(
                              child: Text('Donate Now',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                              onPressed: () {

            
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Expanded(
                                      child: AlertDialog(backgroundColor: Colors.transparent,
                                        title:  Stack(
                                          children: [
                                            Card(
                                              child:  Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 30.0,right: 30,top: 30,bottom: 10),
                                                    child:
                                                   Text("Change for Charity Donation",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),)
                                                  ),
                                                  Dash(
                                                      direction: Axis.horizontal,
                                                      length: 180,
                                                      dashLength: 8,
                                                      dashColor: Colors.grey),
                                                  SizedBox(height: 10,),
                                                  Text("POPPoints Required:",style: TextStyle(fontSize: 10),),
                                                  SizedBox(height: 5,),
                                                  Image(image: AssetImage( 'assets/assetsimages/Frame 142166.png'),fit: BoxFit.fill,height: 19,width: 115,),
                                                  SizedBox(height: 10,),
                                                  Image(image: AssetImage( 'assets/assetsimages/image (43).png'),fit: BoxFit.fill,height: 50,width: 180,),
                                                 // image (43)
                                                  SizedBox(height: 20,),
                                                  Container(width: 200,
                                                    child: ElevatedButton(
                                                      child: Text('Donate Now',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) => Donate_POPPoints_Success(),),
                                                        );
                                                      },
                                                      style: ElevatedButton.styleFrom(
                                                          backgroundColor: Color( 0xFF65CAE4),
                                                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                                          textStyle: TextStyle(
                                                              fontSize: 30,
                                                              fontWeight: FontWeight.bold)),
                                                    ),
                                                  ),
                                                  SizedBox(height: 10,),
                                                  InkWell(
                                                    child: Text('Donate Later',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black),),
                                                    onTap: (){
                                                      Navigator.of(context).pop(false);
                                                    },
                                                  ),
                                                  SizedBox(height: 10,),
            
                                                  // Group 14150
                                                ],
                                              ),
                                              // Ginger
                                            ),
                                            Positioned(
                                              top: -12 + 0,
                                              left: MediaQuery.of(context).size.width / 2 - 100,
                                              child: Container(
                                                child: Image(image: AssetImage('assets/assetsimages/Group.png',),fit: BoxFit.contain,width: 70,height: 40,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 3 + 0,
                                              left: MediaQuery.of(context).size.width / 2 - 85,
                                              child: Container(
                                                child: Text("Donate",style: TextStyle(fontSize: 9,fontWeight: FontWeight.w500,color: Colors.white),),
                                              ),
                                            ),
                                          ],
                                        ),
            
                                      ),
                                    );
                                  },
                                );
                                return null;
            
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color( 0xFF65CAE4),
                                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                  textStyle: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(height: 10,),
                          // Group 14150
                        ],
                      ),
                      // Ginger
                    ),
                  ),
            
                ),
                Positioned(
                  top: 116 + 0,
                  left: MediaQuery.of(context).size.width / 2 - 50,
                  child: Container(
                    // padding: EdgeInsets.all(5),
                    // decoration: ShapeDecoration(
                    //   color: Colors.white,
                    //   shape: CircleBorder(),
                    // ),
                    child: Image(image: AssetImage('assets/assetsimages/Group.png',),fit: BoxFit.contain,width: 120,height: 70,
                      //AssetImage('assets/assetsimages/Group.png',),
                      // radius: 45,
                    ),
                  ),
                ),
                Positioned(
                  top: 143 + 0,
                  left: MediaQuery.of(context).size.width / 2 - 15,
                  child: Container(
                    child: Text("DONATE",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500,color: Colors.white),),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 490.0,left: 30,right: 20),
                  child: Image(image: AssetImage("assets/assetsimages/Frame 142177.png"),),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 510.0,left: 30,right: 20),
                  child: Column(
                    children: [
                      Container(alignment:Alignment.topLeft,margin: EdgeInsets.only(left: 20,),
                          child: Text("Description: ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),)),
                      // Container(height: 60,width: 315,
                      //   child: Card(
                      //     child: Container(alignment: Alignment.bottomCenter,
                      //         child: Padding(
                      //           padding: const EdgeInsets.all(5.0),
                      //           child: Image(image: AssetImage('assets/assetsimages/Group 140642.png',),fit: BoxFit.cover,),
                      //         )),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image(image: AssetImage('assets/assetsimages/curabitur.png',),fit: BoxFit.cover,),
                      ),
                      Container(alignment:Alignment.topLeft,margin: EdgeInsets.only(left: 20,),
                          child: Text("Terms & Conditions: ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),)),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0,right: 15,top: 5,bottom: 15),
                        child: Image(image: AssetImage('assets/assetsimages/cur.png',),fit: BoxFit.cover,),
                      ),
                    ],
                  ),
                )
            
            
            
            
              ],
            ),
          ),
        )
      //CustomScrollView(
      //   slivers: <Widget>[
      //     SliverAppBar(
      //       snap: false,
      //       pinned: false,
      //       floating: false,
      //       flexibleSpace: FlexibleSpaceBar(
      //           centerTitle: true,
      //           // title: Text("title",
      //           //     style: TextStyle(
      //           //       color: Colors.white,
      //           //       fontSize: 16.0,
      //           //     ) //TextStyle
      //           // ), //Text
      //           background:  Image(image: AssetImage("assets/assetsimages/Rectangle 529.png"),fit: BoxFit.fill,)
      //
      //       ), //FlexibleSpaceBar
      //       expandedHeight: 230,
      //       backgroundColor: Colors.greenAccent[400],
      //             actions: [Padding(
      //               padding: const EdgeInsets.only(right: 10.0),
      //               child: Image(image: AssetImage( 'assets/assetsimages/Frame 1420211.png'),height: 25,width: 75,),
      //             )] //<Widget>[]
      //     ), //SliverAppBar
      //     SliverList(
      //
      //       delegate: SliverChildBuilderDelegate(
      //             (context, index) => ListTile(
      //       //    tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
      //           title: Text("dtsdfvjhujd"),
      //               //Center
      //         ), //ListTile
      //       //  childCount: 51,
      //       ), //SliverChildBuildDelegate
      //     ) //SliverList
      //   ], //<Widget>[]
      // )
    );
  }
}
