import 'package:flutter/material.dart';

class EPassVoucherCode extends StatefulWidget {
  const EPassVoucherCode({super.key});

  @override
  State<EPassVoucherCode> createState() => _EPassVoucherCodeState();
}

class _EPassVoucherCodeState extends State<EPassVoucherCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("E-Pass Voucher"),),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(alignment: Alignment.topLeft,
                    child: Text("Enter Voucher Code",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),)),
                SizedBox(height: 10,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Voucher Code',
                    hintText: 'Enter Voucher Code',
                  ),
                ),
                SizedBox(height: 10,),
                Image(image: AssetImage('assets/assetsimages/image (30).png',),),
                SizedBox(height: 10,),
                Container(alignment: Alignment.topLeft,
                    child: Text("Select an E-Pass",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),)),
                SizedBox(height: 15,),
                Image(image: AssetImage('assets/assetsimages/e-vouchers1.png',),),
                SizedBox(height: 5,),
                Image(image: AssetImage('assets/assetsimages/e-vouchers2.png',),),
                SizedBox(height: 5,),
                Image(image: AssetImage('assets/assetsimages/e-vouchers1.png',),),
                SizedBox(height: 20,),
                ElevatedButton(
                  child: Text('Apply',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                  onPressed: () =>
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Expanded(
                            child: AlertDialog(backgroundColor: Colors.white,
                              title: Center(child: Text(' Confirm to Use the\nFollowing E-Voucher?',
                                style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22,wordSpacing: BorderSide.strokeAlignCenter),)),
                              //   content: const Text("is disabled on this device. Please enable it and try again."),
                              actions: [
                                Image(image: AssetImage('assets/assetsimages/e-vouchers1.png',),),
                                SizedBox(height: 10,),
                                ElevatedButton(
                                  child: Text('Confirm',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(fixedSize: Size(200, 42),
                                    backgroundColor: Color( 0xFF65CAE4),
                                    // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                ElevatedButton(
                                  child: Text('Cancel',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color( 0xFF65CAE4)),),
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(fixedSize: Size(200, 42),
                                    backgroundColor: Colors.white,
                                    // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                  ),
                                ),
                                SizedBox(height: 5,),
                              ],
                            ),
                          );
                        },
                      ),
                  style: ElevatedButton.styleFrom(fixedSize: Size(200, 42),
                    backgroundColor: Color( 0xFF65CAE4),
                    // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  ),
                ),
              //  e-vouchers1 e-vouchers2
              ],
            ),
          ),
        ),
      ),
    );
  }
}
