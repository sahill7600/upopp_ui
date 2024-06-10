import 'package:flutter/material.dart';
import 'Confirm_Email.dart';

class Success_Payment extends StatefulWidget {
  const Success_Payment({super.key});

  @override
  State<Success_Payment> createState() => _Success_PaymentState();
}

class _Success_PaymentState extends State<Success_Payment> {
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
             // image (41)
              Padding(
                padding: const EdgeInsets.only(left: 50.0,right: 50,top: 150),
                child: Image.asset(
                  'assets/assetsimages/image (41).png', // Replace with your wheel image
                  width: 204,
                  // height: 128,
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15),
                child: TextFormField(
          
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'email address',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  textInputAction: TextInputAction.next,
                  onEditingComplete: () => FocusScope.of(context).nextFocus(),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Type email address here';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                child: Text('Confirm',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Confirm_Email(),),
                  );
                },
                style: ElevatedButton.styleFrom(fixedSize: Size(200, 42),
                  backgroundColor: Color( 0xFF65CAE4),
                  // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
              ),
              SizedBox(height: 10,),
              InkWell(child: Text("Skip",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),)
              //image (47)
            ],
          ),
        ),
      ),
    );
  }
}
