import 'package:demo_upopp/UI/Pages/Purchase-E-Vouchers/Confirm_Email.dart';
import 'package:flutter/material.dart';

class Payment_Success extends StatefulWidget {
  const Payment_Success({super.key});

  @override
  State<Payment_Success> createState() => _Payment_SuccessState();
}

class _Payment_SuccessState extends State<Payment_Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Container(margin: EdgeInsets.only(right: 15),
          child: InkWell(child: Icon(Icons.clear),
            onTap: (){
              Navigator.pop(context);
            },),
        )
      ],),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 40,),
            Container(height: 200,width: 300,alignment: Alignment.center,
                child: Image(image: AssetImage('assets/assetsimages/image (58).png',))),

            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20.0),
              child: TextField (
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    labelText: 'Email Address',
                    hintText: 'Email Address'
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child: Text('Confirm',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Confirm_Email(),),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color( 0xFF65CAE4),fixedSize: Size(200, 42)
                // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
            ),
            SizedBox(height: 10,),
            InkWell(child: Text("Skip",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
              onTap:(){} ,)

          ],),
        ),
      ),
    );
  }
}
