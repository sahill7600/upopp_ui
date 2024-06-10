import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class Mall_Details extends StatefulWidget {
  const Mall_Details({super.key});

  @override
  State<Mall_Details> createState() => _Mall_DetailsState();
}

class _Mall_DetailsState extends State<Mall_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mall Details"),),
      extendBody: true,
      floatingActionButton: FloatingActionButton(shape: CircleBorder(),
        onPressed: () {},backgroundColor: Color( 0xFF65CAE4),
        child: const Icon(Icons.camera_alt,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: HomePageButtonNavigationBar(currentIndex: 0, onTap: (int ) {  },),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/assetsimages/image (36).png', // Replace with your wheel image
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                child: Text('Browse Stores',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color( 0xFF65CAE4),fixedSize: Size(200, 42)
                  // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 1, // Adjust width as needed
                height: MediaQuery.of(context).size.height * 0.5, // Adjust height as needed
                child: DefaultTabController(
                  length: 2, // Number of tabs
                  child: Column(
                    children: [
                      TabBar(
                        labelStyle: TextStyle(fontSize: 11.0,fontFamily: 'Family Name'),
                        tabs: [
                          Tab(text: 'Services'),
                          Tab(text: 'Parking Charges',height: Checkbox.width,),
                          Tab(text: 'Counter Location'),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Container(
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10.0,right: 10),
                                child: Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    Container(
                                        alignment: Alignment.topLeft,
                                        child: Text('Lorem Ipsum',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),)),
                                    SizedBox(height: 5,),
                                    Text('Lorem ipsum dolor sit amet consectetur. Viverra amet iaculis feugiat at cursus ut facilisi donec sit. Feugiat volutpat ut tempor aliquam magna.',
                                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                                    SizedBox(height: 10,),
                                    Dash(
                                        direction: Axis.horizontal,
                                        length: 320,
                                        dashLength: 9,
                                        dashColor: Colors.grey),
                                    SizedBox(height: 10,),
                                    Container(alignment: Alignment.topLeft,
                                        child: Text('Lorem Ipsum',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),)),
                                    SizedBox(height: 5,),
                                    Text('Lorem ipsum dolor sit amet consectetur. Viverra amet iaculis feugiat at cursus ut facilisi donec sit. Feugiat volutpat ut tempor aliquam magna.',
                                      style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                              child: Text('Tab 2 Content'),
                            ),
                            Container(
                              color: Colors.transparent,
                              child: Text('Tab 2 Content'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


// class MyTabOne extends StatelessWidget {
//   const MyTabOne({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text("This is Tab One",style: TextStyle(fontSize: 20),));
//   }
// }
// class MyTabTwo extends StatelessWidget {
//   const MyTabTwo({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Container(
//         child: Column(
//           // ignore: prefer_const_literals_to_create_immutables
//           children: [
//             // SwitcherButton(
//             //   value: true,
//             //   onChange: (value) {
//             //     print(value);
//             //   },
//             // ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 height: 30,
//                 width: 150,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.white),
//                 child: TabBar(
//                   indicator: BoxDecoration(
//                     color: Colors.red[800],
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   labelColor: Colors.black,
//                   dividerColor: Colors.black,
//                   // ignore: prefer_const_literals_to_create_immutables
//                   tabs: [
//                     Tab(
//                       text: "Live",
//                     ),
//                     Tab(
//                       text: "Result",
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Expanded(
//               // ignore: prefer_const_literals_to_create_immutables
//               child: TabBarView(children: [
//                 // MyLivePage(),
//                 // MyResultPage(),
//               ]),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
// class MyTabThree extends StatelessWidget {
//   const MyTabThree({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

