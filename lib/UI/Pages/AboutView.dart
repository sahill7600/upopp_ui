import 'dart:math';
import 'package:demo_upopp/Constants/Localization/LanguageConstants.dart';
import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';

class AboutView extends StatefulWidget {
  @override
  _AboutViewState createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> with SingleTickerProviderStateMixin {

  int pageIndex = 1;
  AnimationController? _controller;
  double _angle = 0.0;
  bool _isSpinning = false;
  List<String> _prizes = ['Prize 1', 'Prize 2', 'Prize 3', 'Prize 4', 'Prize 5'];
  Random _random = Random();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..addListener(() {
      setState(() {
        _angle = _controller!.value * 2 * pi;
      });
    });
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  void _spinWheel() {
    if (!_isSpinning) {
      setState(() {
        _isSpinning = true;
      });
      _controller!.forward(from: 0.0).then((_) {
        setState(() {
          _isSpinning = false;
        });
        _showResultDialog();
      });
    }
  }

  String _getRandomPrize() {
    int index = _random.nextInt(_prizes.length);
    return _prizes[index];
  }

  void _showResultDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32.0))),
          contentPadding: EdgeInsets.only(top: 10.0),
          backgroundColor: Color(0xFFFDEEED),
          title: Stack(children: [

            Image(image: AssetImage( 'assets/assetsimages/image 57.png'),fit: BoxFit.fill,),
            Center(
              child: Column(
                children: [
                  Text('Congratulations!',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  Text('You have won',style: TextStyle(fontSize: 14),),
                  SizedBox(height: 10,),
                  Image(image: AssetImage( 'assets/assetsimages/Group 14136.png'),height: 125,width: 125,),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, child:  Text('Spin Again', style: TextStyle(fontSize: 16),),),
                  TextButton(child: Text('Go to My E-Vouchers',style: TextStyle(color: Colors.black,fontSize: 14),),onPressed: (){},),
                ],
              ),
            ),
            Positioned(
              right: 0.0,
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    radius: 14.0,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.close, color: Colors.red),
                  ),
                ),
              ),
            ),
            ],
          ),
        //  content: TextButton(child: Text('Go to My E-Vouchers',style: TextStyle(color: Colors.black,fontSize: 14),),onPressed: (){},),
          // actions: <Widget>[
          //   TextButton(
          //     onPressed: () {
          //       Navigator.of(context).pop();
          //     },
          //     child: Text('OK'),
          //   ),
          // ],
        );
      },
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color( 0xFFFDEEED),
      // appBar: AppBar(
      //   iconTheme: IconThemeData(color: Colors.white),
      //   flexibleSpace: Container(
      //     color: AppColors.blackColor,
      //   ),
      //   backgroundColor: AppColors.transparent,
      //   title: Text(
      //     getAppBarTitle(),
      //     style: AppTextStyles.textStyle18OffWhite400(),
      //   ),
      //   centerTitle: true,
      // ),
      appBar: AppBar(title: Center(child: Text("Reward")),),
      extendBody: true,
      floatingActionButton: FloatingActionButton(shape: CircleBorder(),
        onPressed: () {},backgroundColor: Color( 0xFF65CAE4),
        child: const Icon(Icons.camera_alt,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: HomePageButtonNavigationBar(currentIndex: 0, onTap: (int ) {  },),
      body:

      Center(
        child: Stack(
         // alignment: AlignmentDirectional.center,
          children: [
            Container(alignment: Alignment.center,
              child: Column(
                // alignment: Alignment.center,
                children: [
                  SizedBox(height: 40,),
                  Text("Spin the Wheel &",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                  Center(child: Text("Win Big!",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),)),
                  SizedBox(height: 20,),
                  Transform.rotate(
                    angle: _angle,
                    child: Image.asset(
                      'assets/assetsimages/Group 14234.png', // Replace with your wheel image
                      width: 300,
                      height: 300,
                    ),
                  ),
                ],
              ),
            ),
            Container(margin: EdgeInsets.only(top: 450,left: 55),
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('You have'),
                  Text('Spin'),
                ],
              ),
              height: 100,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),border: Border.all(color: Color( 0xFFF1716C))
              ),
            ),
            Container(margin: EdgeInsets.only(top: 525,),alignment: Alignment.topCenter,
              child: ElevatedButton(
                onPressed: _isSpinning ? null : _spinWheel,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Spin',
                    style: TextStyle(fontSize: 20,color: Colors.white),
                  ),
                ),
                style: ElevatedButton.styleFrom(foregroundColor: Colors.blue,disabledBackgroundColor: Color( 0xFF65CAE4),
                    backgroundColor: Color( 0xFF65CAE4),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 3),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getAppBarTitle() {
    switch (pageIndex) {
      case 0:
        return LanguageConst.home;
      case 1:
        return LanguageConst.about;
      case 2:
        return LanguageConst.contact;
      default:
        return LanguageConst.home;
    }
  }
}
