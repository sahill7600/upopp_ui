import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Success_Payment.dart';

class PaymentCardView extends StatefulWidget {
  @override
  _PaymentCardViewState createState() => _PaymentCardViewState();
}

class _PaymentCardViewState extends State<PaymentCardView> {
  TextEditingController _cardHolderNameController = TextEditingController();
  TextEditingController _cardNumberController = TextEditingController();
  TextEditingController _expiryMonthController = TextEditingController();
  TextEditingController _expiryYearController = TextEditingController();
  TextEditingController _cvvController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/assetsimages/image (40).png', // Replace with your wheel image
                // width: 171,
                // height: 128,
              ),
              SizedBox(height: 16.0),
              Container(alignment: Alignment.topLeft,
                  child: Text("Name on Card",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500))),
              TextFormField(
                controller: _cardHolderNameController,
                decoration: InputDecoration(
                  labelText: 'Cardholder Name',
                  hintText: 'John Doe',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                textInputAction: TextInputAction.next,
                onEditingComplete: () => FocusScope.of(context).nextFocus(),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter cardholder name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              Container(alignment: Alignment.topLeft,
                  child: Text("Card Number",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),)),
              TextFormField(
                controller: _cardNumberController,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(16),
                  _CardNumberFormatter(),
                ],
                decoration: InputDecoration(
                  labelText: 'Card Number',
                  hintText: 'XXXX XXXX XXXX XXXX',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
                textInputAction: TextInputAction.next,
                onEditingComplete: () => FocusScope.of(context).nextFocus(),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter card number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              Container(alignment: Alignment.topLeft,
                  child: Text("Card Expiry",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),)),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _expiryMonthController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(2),
                      ],
                      decoration: InputDecoration(
                        labelText: 'Month',
                        hintText: 'MM',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => FocusScope.of(context).nextFocus(),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter expiry month';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextFormField(
                      controller: _expiryYearController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(2),
                      ],
                      decoration: InputDecoration(
                        labelText: 'Year',
                        hintText: 'YY',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => FocusScope.of(context).nextFocus(),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter expiry year';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextFormField(
                      controller: _cvvController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(3),
                      ],
                      decoration: InputDecoration(
                        labelText: 'CVV',
                        hintText: 'XXX',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      textInputAction: TextInputAction.done,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter CVV';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              if (_errorMessage.isNotEmpty)
                Text(
                  _errorMessage,
                  style: TextStyle(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
              SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('Pay',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                onPressed: (){
                  // if (_formKey.currentState!.validate()) {
                  //   _processPayment();
                  // }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Success_Payment(),),
                  );
                },
                style: ElevatedButton.styleFrom(fixedSize: Size(200, 42),
                  backgroundColor: Color( 0xFF65CAE4),
                  // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('Clear Fields',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                onPressed: (){
                  _clearFields();
                },
                style: ElevatedButton.styleFrom(fixedSize: Size(200, 42),
                  backgroundColor: Color( 0xFF65CAE4),
                  // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _processPayment() {
    // Simulate payment processing
    // Replace this with actual payment gateway integration
    if (_cardNumberController.text == '4242424242424242' &&
        _expiryMonthController.text == '12' &&
        _expiryYearController.text == '23' &&
        _cvvController.text == '123') {
      setState(() {
        _errorMessage = 'Payment Successful!';
      });
    } else {
      setState(() {
        _errorMessage = 'Payment Failed. Please check your details.';
      });
    }
  }

  void _clearFields() {
    _cardHolderNameController.clear();
    _cardNumberController.clear();
    _expiryMonthController.clear();
    _expiryYearController.clear();
    _cvvController.clear();
    setState(() {
      _errorMessage = '';
    });
  }
}

class _CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;

    if (text.length == 4 || text.length == 9 || text.length == 14) {
      text += ' ';
    }

    return newValue.copyWith(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PaymentCardView(),
  ));
}
