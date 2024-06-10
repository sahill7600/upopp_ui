import 'package:flutter/material.dart';

import 'Payment.dart';

class Purchase_Cart extends StatefulWidget {
  const Purchase_Cart({super.key});

  @override
  State<Purchase_Cart> createState() => _Purchase_CartState();
}

class _Purchase_CartState extends State<Purchase_Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Cart")),),
      body: Column(
        children: [
          Image.asset(
            'assets/assetsimages/rewards111.png', // Replace with your wheel image
            // width: 171,
            // height: 128,
          ),
          Image.asset(
            'assets/assetsimages/rewards (01).png', // Replace with your wheel image
            // width: 171,
            // height: 128,
          ),

          Expanded(
            child: Align(alignment: Alignment.bottomCenter,
              child: Container(
                width: 390,height: 137,
                child: Card(
                  child:Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 10,top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total (incl. of GST)",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                          SizedBox(height: 5,),
                          Text("\$90",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0,left: 20.0),
                      child: ElevatedButton(
                        child: Text('Add to Cart',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaymentCardView (),),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color( 0xFF65CAE4),fixedSize: Size(350, 42)
                          // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        ),
                      ),
                    ),
                  ],) ,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}