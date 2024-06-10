import 'package:flutter/material.dart';

class Receipt extends StatefulWidget {
  const Receipt({super.key});

  @override
  State<Receipt> createState() => _ReceiptState();
}

class _ReceiptState extends State<Receipt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(margin: EdgeInsets.only(right: 15),
            child: InkWell(child: Icon(Icons.clear),
              onTap: (){
                Navigator.pop(context);
              },),
          )
        ],
      ),
      body:  Container(alignment: Alignment.center,margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            // image (41)
            Image.asset(
              'assets/assetsimages/image (48).png', // Replace with your wheel image
              width: 204,
              // height: 128,
            ),
            SizedBox(height: 20,),
            Text("We have sent your receipt to \nmyemail@gmail.com",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
            SizedBox(height: 20,),
            // Padding(
            //   padding: const EdgeInsets.only(left: 15.0,right: 15),
            //   child: TextFormField(
            //
            //     keyboardType: TextInputType.number,
            //     decoration: InputDecoration(
            //       labelText: 'email address',
            //       border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            //     ),
            //     textInputAction: TextInputAction.next,
            //     onEditingComplete: () => FocusScope.of(context).nextFocus(),
            //     validator: (value) {
            //       if (value!.isEmpty) {
            //         return 'Type email address here';
            //       }
            //       return null;
            //     },
            //   ),
            // ),
            // SizedBox(height: 20,),
            ElevatedButton(
              child: Text('View My E-Vouchers',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
              onPressed: (){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Receipt(),),
                // );
              },
              style: ElevatedButton.styleFrom(fixedSize: Size(200, 42),
                backgroundColor: Color( 0xFF65CAE4),
                // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
            ),
            SizedBox(height: 10,),
            InkWell(child: Text("Continue Shopping",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
            )
            //image (47)
          ],
        ),
      ),
        //image (48)
    );
  }
}
