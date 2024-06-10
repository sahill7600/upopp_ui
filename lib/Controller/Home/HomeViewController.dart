import 'dart:developer';
import 'package:demo_upopp/Constants/Enums/ViewState.dart';
import 'package:demo_upopp/Constants/Localization/LanguageConstants.dart';
import 'package:demo_upopp/Controller/BaseController.dart';
import 'package:demo_upopp/DataHandler/Network/APIEndpoints.dart';
import 'package:demo_upopp/DataHandler/Network/Utils/ErrorParsingModel.dart';
import 'package:demo_upopp/Model/API/NewsFeedsDataModel.dart';
import 'package:demo_upopp/Services/ApiService.dart';
import 'package:flutter/material.dart';

class HomeViewController extends BaseController {
  List<NewsFeedsDataModel> feedList = [];
  int pageIndex = 0;
  int currentTab = 0;
  final data = [1, 2, 3, 4, 5,6,7,8];
  final List<String> _imagePaths = [
    'assets/assetsimages/image (16).png',
    'assets/assetsimages/image (17).png',
    'assets/assetsimages/image (18).png',
    'assets/assetsimages/image (19).png',
    'assets/assetsimages/image (20).png',
    'assets/assetsimages/image (21).png',
    'assets/assetsimages/image (22).png',
    'assets/assetsimages/image (23).png',

    // Add all your image paths here
  ];
  @override
  void onInit() {
    super.onInit();
    // getNewsFeeds();
  }

  Widget horizontalList1 =  Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 161.0,
      child:  ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(width: 342.0,
            child: Image(
              image: AssetImage('assets/assetsimages/Rectangle 530.png',), fit: BoxFit.contain,
            ),
          ),SizedBox(width: 5,),
          Container(width: 342.0,
            child: Image(
              image: AssetImage('assets/assetsimages/Rectangle 530.png',), fit: BoxFit.contain,
            ),
          ),SizedBox(width: 5,),
          Container(width: 342.0,
            child: Image(
              image: AssetImage('assets/assetsimages/Rectangle 530.png',), fit: BoxFit.contain,
            ),
          ),SizedBox(width: 5,),
          Container(width: 342.0,
            child: Image(
              image: AssetImage('assets/assetsimages/Rectangle 530.png',), fit: BoxFit.contain,
            ),
          ),
        ],
      ));

  Widget horizontalList2 =  Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 270.0,
      child:  ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(width: 320.0,
            child: Image(
              image: AssetImage('assets/assetsimages/rewards5.png',), fit: BoxFit.fill,
            ),
          ),SizedBox(width: 5,),
          Container(width: 342.0,
            child: Image(
              image: AssetImage('assets/assetsimages/rewards5.png',), fit: BoxFit.contain,
            ),
          ),SizedBox(width: 5,),
          Container(width: 342.0,
            child: Image(
              image: AssetImage('assets/assetsimages/rewards5.png',), fit: BoxFit.contain,
            ),
          ),SizedBox(width: 5,),
          Container(width: 342.0,
            child: Image(
              image: AssetImage('assets/assetsimages/rewards5.png',), fit: BoxFit.contain,
            ),
          ),
        ],
      ));

  Widget horizontalList3 =  Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 300.0,
      child:  ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(width: 342.0,
            child: InkWell(
              child: Image(
                image: AssetImage('assets/assetsimages/rewards4.png',), fit: BoxFit.fill,
              ),
              onTap: (){
                  // Navigator.push(
                //     context ,
                //     MaterialPageRoute(
                //         builder: (context) => EventsPromotions_Details()));
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => EventsPromotions_Details(),),
                // );
                print("object");
              },
            ),
          ),SizedBox(width: 5,),
          Container(width: 342.0,
            child: Image(
              image: AssetImage('assets/assetsimages/rewards4.png',), fit: BoxFit.contain,
            ),
          ),SizedBox(width: 5,),
          Container(width: 342.0,
            child: Image(
              image: AssetImage('assets/assetsimages/rewards4.png',), fit: BoxFit.contain,
            ),
          ),SizedBox(width: 5,),
          Container(width: 342.0,
            child: Image(
              image: AssetImage('assets/assetsimages/rewards4.png',), fit: BoxFit.contain,
            ),
          ),
        ],
      ));

  /// TODO: here below code for GET method API calling
  void getNewsFeeds() async {
    setLoaderState(ViewStateEnum.busy);
    await ApiService.getRequest(
      url: "${APIEndpoints.newsFeedsUrl}?size=3",
      hasToken: true,
      onSuccess: (Map newsData) {
        log("News data is >>>>> $newsData");
        if (newsData['data'] != null) {
          feedList = NewsFeedsDataModel.fromJsonArray(newsData['data']['data']);
        }
        setLoaderState(ViewStateEnum.idle);
      },
      onError: (ErrorParsingModel error) {
        setLoaderState(ViewStateEnum.idle);
        showMessageInSnackBar(error.message!, true);
        print("Error is >>> ${error.message}");
      },
    );
    update();
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
