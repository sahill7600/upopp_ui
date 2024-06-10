import 'package:demo_upopp/UI/Pages/Purchase-E-Vouchers/Cart.dart';
import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';

class Purchase_Details extends StatefulWidget {
  const Purchase_Details({super.key});

  @override
  State<Purchase_Details> createState() => _Purchase_DetailsState();
}

class _Purchase_DetailsState extends State<Purchase_Details> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButton: FloatingActionButton(shape: CircleBorder(),
        onPressed: () {},backgroundColor: Color( 0xFF65CAE4),
        child: const Icon(Icons.camera_alt,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: HomePageButtonNavigationBar(currentIndex: 0, onTap: (int ) {  },),
      body: SafeArea(
        child: SingleChildScrollView(
          child:
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/assetsimages/image (59).png', // Replace with your wheel image
                    // width: 171,
                    // height: 128,
                  ),
                  Positioned(
                    top: 275 + 0,
                    left: MediaQuery.of(context).size.width / 2 - 95,
                    child: Container(
                      child:  ElevatedButton(
                        child: Text('Add to Cart',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                        onPressed: () =>
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Expanded(
                                  child: AlertDialog(backgroundColor: Colors.white,
                                    title:  Image(image: AssetImage('assets/assetsimages/image (39).png',),),
                                    //   content: const Text("is disabled on this device. Please enable it and try again."),
                                    actions: [
                                      SizedBox(height: 10,),
                                      Center(
                                        child: ElevatedButton(
                                          child: Text('View Cart',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                                          onPressed: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Purchase_Cart(),),
                                            );

                                          },
                                          style: ElevatedButton.styleFrom(fixedSize: Size(200, 42),
                                            backgroundColor: Color( 0xFF65CAE4),
                                            // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      InkWell(child: Center(child: Text("Continue Shopping",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),)),
                                        onTap: () {
                                          //   Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //       builder: (context) => Purchase_Details(),),
                                          //   );
                                          // },),
                                        },),
                                      SizedBox(height: 5,),
                                    ],
                                  ),
                                );
                              },
                            ),
                        //     () {
                        //   //image (39)
                        // },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color( 0xFF65CAE4),fixedSize: Size(200, 42)
                          // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 15 + 0,
                    //   left: MediaQuery.of(context).size.width / 2 - 95,
                    child: Container(
                        child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              child: Image.asset('assets/assetsimages/CartIcon.png',height: 56,width: 56,),
                              onTap: (){
                                Navigator.pop(context);
                              },),
                            SizedBox(width: 240,),
                            InkWell(child: Image.asset('assets/assetsimages/Backicon.png',height: 56,width: 56,),
                              onTap: (){},),

                            // Image.asset('assets/assetsimages/CartIcon.png',),
                          ],
                        )
                    ),
                  ),

                  //image (38)
                ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Image.asset(
                  'assets/assetsimages/image (38).png', // Replace with your wheel image
                  // width: 171,
                  // height: 128,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
