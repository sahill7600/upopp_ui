import 'package:demo_upopp/UI/Pages/Login/LoginView.dart';
import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';
import 'Account_pages/Account_Settings.dart';
import 'Account_pages/Car_Park/Car_Park.dart';
import 'Account_pages/Card_Received/Card_ReceivedScreen.dart';
import 'Account_pages/Contact_Us/Contact_Us.dart';
import 'Account_pages/Donate POPPoints/Donate_POPPoints.dart';
import 'Account_pages/E_Voucher/E_Voucher.dart';
import 'Account_pages/FAQs/FAQs.dart';
import 'Account_pages/Gift_Voucher/Gift_E_Voucher.dart';
import 'Account_pages/POPPoints/POPPoints.dart';
import 'Account_pages/PromoCode/Promo_Code.dart';
import 'Account_pages/Purchase_Gift_Voucher/Purchase_Gift_Voucher.dart';
import 'Account_pages/ReferToFriend/ReferAFriend.dart';
import 'Account_pages/ScanGiftCard/ScanGiftCard.dart';
import 'Account_pages/Store/Store.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Account"),),
      extendBody: true,
      floatingActionButton: FloatingActionButton(shape: CircleBorder(),
        onPressed: () {},backgroundColor: Color( 0xFF65CAE4),
        child: const Icon(Icons.camera_alt,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: HomePageButtonNavigationBar(currentIndex: 0, onTap: (int ) {  },),
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(margin: EdgeInsets.all(10),
                    child: InkWell(
                      child: Image.asset(
                        'assets/assetsimages/image (7).png', // Replace with your wheel image
                        // width: 167,
                        // height: 98,
                      ),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => POPPoints(),),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    top: 30 + 0,
                    left: MediaQuery.of(context).size.width / 2 + 55,
                    child: InkWell(
                      child: Image(image: AssetImage('assets/assetsimages/image (6).png',),
                        fit: BoxFit.cover,width: 95,height: 18,
                      ),
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Donate_POPPoints(),),
                        );
                      },
                    ),
                  ),
                ],
              ),

              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    child: Image.asset(
                      'assets/assetsimages/image (8).png', // Replace with your wheel image
                      width: 171,
                      height: 128,
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Car_Park(),),
                      );
                    },
                  ),
                  InkWell(
                    child: Image.asset(
                      'assets/assetsimages/image (9).png', // Replace with your wheel image
                      width: 171,
                      height: 128,
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => E_Voucher(),),
                      );
                    },
                  ),
                ],
              ),
             // Frame 14237 image (40)
              SizedBox(height: 5,),
              InkWell(
                child: Image.asset(
                  'assets/assetsimages/Frame 14237.png', // Replace with your wheel image
                  // width: 171,
                  // height: 128,
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QRViewScreen(),),
                  );
                },
              ),
              Divider(endIndent: 10,indent: 10,) ,
              InkWell(
                child: Image.asset(
                  'assets/assetsimages/Frame 14239.png', // Replace with your wheel image
                  // width: 171,
                  // height: 128,
                ),
                onTap: (){},
              ),
              Divider(endIndent: 10,indent: 10,),
              InkWell(
                child: Image.asset(
                  'assets/assetsimages/Frame 14238.png', // Replace with your wheel image
                  // width: 171,
                  // height: 128,
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PromoCode(),),
                  );
                },
              ),
              Divider(endIndent: 10,indent: 10,),
              InkWell(
                child: Image.asset(
                  'assets/assetsimages/Frame 14245.png', // Replace with your wheel image
                  // width: 171,
                  // height: 128,
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReferAFriend(),),
                  );
                },
              ),
              Divider(endIndent: 10,indent: 10,),
              InkWell(
                child: Image.asset(
                  'assets/assetsimages/Frame 14240.png', // Replace with your wheel image
                  // width: 171,
                  // height: 128,
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoreScreen(),),
                  );
                },
              ),
              Divider(endIndent: 10,indent: 10,) ,
              InkWell(
                child: Image.asset(
                  'assets/assetsimages/Frame 14241.png', // Replace with your wheel image
                  // width: 171,
                  // height: 128,
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountSettings(),),
                  );
                },
              ),
              Divider(endIndent: 10,indent: 10,),
              InkWell(
                child: Image.asset(
                  'assets/assetsimages/Frame 14242.png', // Replace with your wheel image
                  // width: 171,
                  // height: 128,
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FAQs(),),
                  );
                },
              ),
              Divider(endIndent: 10,indent: 10,),
              InkWell(
                child: Image.asset(
                  'assets/assetsimages/Frame 14243.png', // Replace with your wheel image
                  // width: 171,
                  // height: 128,
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContactUs(),),
                  );
                },
              ),
              Divider(endIndent: 10,indent: 10,),
              InkWell(
                child: Image.asset(
                  'assets/assetsimages/Frame 14244.png', // Replace with your wheel image
                  // width: 171,
                  // height: 128,
                ),
                onTap:() => showDialog(
                  builder: (context) => AlertDialog(
                    title: Column(
                      children: [
                        Image.asset(
                          'assets/assetsimages/Frame 14226.png', // Replace with your wheel image
                          width: 80,
                          height: 80,
                        ),
                        Text('Are You Sure You Want to Logout?'),
                      ],
                    ),
                 //   content: Text('We hate to see you leave...'), Frame 14226
                    actions: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          //SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginView(),),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color( 0xFF65CAE4),
                          // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        ),
                        child: Text('Logout',style: TextStyle(color: Colors.white),),
                      ),
                      InkWell(
                        child: Text('Cancel',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black),),
                        onTap: (){
                          Navigator.of(context).pop(false);
                        },
                      ),
                    ],
                  ), context: context,
                )
                //: (){},  image (45)
              ),
              Divider(endIndent: 10,indent: 10,),
              InkWell(
                child:
                Container(alignment: Alignment.center,margin: EdgeInsets.only(left: 10),height: 40,
                    child: Row(
                      children: [
                        Icon(Icons.book_outlined,color: Color( 0xFFF1716C),),
                        SizedBox(width: 30,),
                        Text("Gift E-Voucher",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),),
                      ],
                    )),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Gift_E_Voucher(),),
                  );
                },
              ),
              Divider(endIndent: 10,indent: 10,) ,
              InkWell(
                child:
                Container(alignment: Alignment.center,margin: EdgeInsets.only(left: 10),height: 40,
                    child: Row(
                      children: [
                        Icon(Icons.gif_box_outlined,color: Color( 0xFFF1716C),),
                        SizedBox(width: 30,),
                        Text("Purchase E-Vouchers",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                      ],
                    )),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Purchase_Gift_Voucher(),),
                  );
                },
              ),
              Divider(endIndent: 10,indent: 10,) ,
              InkWell(
                child:
                Container(alignment: Alignment.center,margin: EdgeInsets.only(left: 10),height: 40,
                    child: Row(
                      children: [
                        Icon(Icons.card_giftcard_outlined,color: Color( 0xFFF1716C),),
                        SizedBox(width: 30,),
                        Text("Card Received",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                      ],
                    )),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Card_ReceivedScreen(),),
                  );
                },
              ),
              Divider(endIndent: 10,indent: 10,) ,
            ],
          ),
        ),
      ),
    );
  }

}
