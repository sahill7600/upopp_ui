import 'package:flutter/material.dart';
import 'Payment_Success.dart';

class Gifting_Sent extends StatefulWidget {
  const Gifting_Sent({super.key});

  @override
  State<Gifting_Sent> createState() => _Gifting_SentState();
}

class _Gifting_SentState extends State<Gifting_Sent> {
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
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image(image: AssetImage('assets/assetsimages/image (57).png',)),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                child: Text('Pay Now',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                onPressed: (){
                  // if (_formKey.currentState!.validate()) {
                  //   _processPayment();
                  // }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Payment_Success(),),
                  );
                },
                style: ElevatedButton.styleFrom(fixedSize: Size(200, 42),
                  backgroundColor: Color( 0xFF65CAE4),
                  // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
              ),
              //image (58)
            ],
          ),
        ),
      ),
    );
  }
}
