import 'package:demo_upopp/UI/Pages/Data_Protection_Policy.dart';
import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'PrivacyPolicy.dart';
import 'Terms & Conditions.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Settings"),),
      extendBody: true,
      floatingActionButton: FloatingActionButton(shape: CircleBorder(),
        onPressed: () {},backgroundColor: Color( 0xFF65CAE4),
        child: const Icon(Icons.camera_alt,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: HomePageButtonNavigationBar(currentIndex: 0, onTap: (int ) {  },),
      body: Column(
        children: [
          Container(alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 10),
              child: Text("Push Notifications",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500))),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),),height: 160,width: 350,
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Promotions',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                        SizedBox(height: 5,),
                        Text.rich(
                          TextSpan(
                            text: 'By choosing yes, you agree to our ',
                            style: TextStyle(fontSize: 8,fontWeight: FontWeight.w400),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Terms and Conditions.',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,fontWeight: FontWeight.w700
                                  )),
                              // can add more TextSpans here...
                            ],
                          ),
                        )
                      //  Text('By choosing yes, you agree to our Terms and Conditions.',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                      ],
                    ),
                    // SizedBox(
                    //   width: 5,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ToggleSwitch( minWidth:  45,minHeight: 29,cornerRadius:10 ,activeBgColor: [Colors.green],
                        initialLabelIndex: 0,
                        totalSwitches: 2,
                        labels: [
                          'Yes',
                          'No',
                        ],
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                    ),
                  ],
                ),
                Divider(),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('POPPoints Status',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                        SizedBox(height: 5,),
                        Text.rich(
                          TextSpan(
                            text: 'We’ll update you once POPPoints are credited to your account.',
                            style: TextStyle(fontSize: 7,fontWeight: FontWeight.w400),

                          ),
                        )
                        //  Text('By choosing yes, you agree to our Terms and Conditions.',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                      ],
                    ),
                    // SizedBox(
                    //   width: 5,
                    // ),
                    ToggleSwitch(  minWidth:  45,minHeight: 29,cornerRadius:10 ,activeBgColor: [Colors.green],
                      initialLabelIndex: 0,
                      totalSwitches: 2,
                      labels: [
                        'Yes',
                        'No',
                      ],
                      onToggle: (index) {
                        print('switched to: $index');
                      },
                    ),
                  ],
                ),
                Divider(),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0,bottom: 8,top: 8,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('E-Vouchers Status',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                          SizedBox(height: 5,),
                          Text.rich(
                            TextSpan(
                              text: 'Receive alerts on your expiring vouchers',
                              style: TextStyle(fontSize: 8,fontWeight: FontWeight.w400),

                            ),
                          )

                        ],
                      ),
                    ),
                    // SizedBox(
                    //   width: 5,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ToggleSwitch(  minWidth:  45,minHeight: 29,cornerRadius:10 ,activeBgColor: [Colors.green],
                        initialLabelIndex: 0,
                        totalSwitches: 2,
                        labels: [
                          'Yes',
                          'No',
                        ],
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 10),
              child: Text("I wish to receive marketing promotions through:",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500))),

          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),),height: 110,width: 350,
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              //  crossAxisAlignment: CrossAxisAlignment.stretch,mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //mainAxisSize: MainAxisSize.max,
                    children: [
                     Text("SMS",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                      ToggleSwitch(  minWidth:  45,minHeight: 29,cornerRadius:10 ,activeBgColor: [Colors.green],
                        initialLabelIndex: 0,
                        totalSwitches: 2,
                        labels: [
                          'Yes',
                          'No',
                        ],
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                    ],
                  ),
                  Divider(),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("E-Newsletter",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                      ToggleSwitch(  minWidth:  45,minHeight: 29,cornerRadius:10 ,activeBgColor: [Colors.green],
                        initialLabelIndex: 0,
                        totalSwitches: 2,
                        labels: [
                          'Yes',
                          'No',
                        ],
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          Container(alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 10),
            child: Text.rich(
              TextSpan(
                text: 'By choosing yes, you agree to our ',
                style: TextStyle(fontSize: 8,fontWeight: FontWeight.w400),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Terms and Conditions.',
                      style: TextStyle(
                          decoration: TextDecoration.underline,fontWeight: FontWeight.w700
                      )),
                  // can add more TextSpans here...
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 10),
              child: Text("About this App:",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500))),

          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),),height: 110,width: 350,
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10,top: 10,bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,mainAxisSize: MainAxisSize.min,mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
                      children: [
                        Text("Terms & Conditions",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                       Icon(Icons.arrow_forward_ios_outlined)
                      ],
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TermsConditions(),),
                      );
                    },
                  ),
                  Divider(),
                  InkWell(
                    child: Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,mainAxisSize: MainAxisSize.max,
                      children: [
                        Text("Data Protection Policy",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                        Icon(Icons.arrow_forward_ios_outlined)
                      ],
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Data_Protection_Policy(),),
                      );
                    },
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            child: Container(margin: EdgeInsets.only(left: 10,right: 10),
              child: Image(image: AssetImage( 'assets/assetsimages/Frame 14263.png'),
              //  height: 25,width: 75,
              ),
            ),onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Privacy_Policy(),),
            );
          },
          ),

        ],
      ),
    );
  }
}
