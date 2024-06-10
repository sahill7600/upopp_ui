import 'package:demo_upopp/Services/NavigationService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:demo_upopp/Constants/AppColors.dart';
import 'package:demo_upopp/Constants/AppIcons.dart';
import 'package:demo_upopp/Constants/Localization/LanguageConstants.dart';
import 'package:demo_upopp/Constants/SizeConfig.dart';
import 'package:demo_upopp/Controller/ConfirmOtpView/ConfirmOtpViewController.dart';
import 'package:demo_upopp/UI/Styling/AppTextStyles.dart';
import 'package:demo_upopp/UI/Widgets/BaseCommonWidget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class ConfirmOtpView extends StatefulWidget {
  // String email;
  //  ConfirmOtpView(this.email,{Key? key}) : super(key: key);

  @override
  State<ConfirmOtpView> createState() => _ConfirmOtpViewState();
}

class _ConfirmOtpViewState extends State<ConfirmOtpView> with BaseCommonWidget {
  ConfirmOtpViewController model =
  Get.isRegistered() ? Get.find() : Get.put(ConfirmOtpViewController());
StreamController<ErrorAnimationType>? errorController;

  // late Timer _timer;
  // int _start = 30;
  //
  // void startTimer() {
  //   const oneSec = const Duration(seconds: 1);
  //   _timer = Timer.periodic(
  //     oneSec,
  //         (Timer timer) {
  //       if (_start == 0) {
  //         setState(() {
  //           timer.cancel();
  //         });
  //       } else {
  //         setState(() {
  //           _start--;
  //         });
  //       }
  //     },
  //   );
  // }
  //
  // void initState() {
  //   startTimer();
  //   super.initState();
  // }
  //
  // @override
  // void dispose() {
  //   _timer.cancel();
  //   super.dispose();
  // }

late Timer _timer;
int _start = 30;
bool isLoading = false;
void startTimer() {
  const oneSec = Duration(seconds: 1);
  _timer = Timer.periodic(
    oneSec,
        (Timer timer) {
      if (_start == 0) {
        setState(() {
          timer.cancel();
          isLoading = false;
        });
      } else {
        setState(() {
          _start--;
        });
      }
    },
  );
}

@override
void initState() {
  super.initState();
  errorController = StreamController<ErrorAnimationType>();
  //Logger.get().log("helllooooo>>>>>>${widget.email}");
  startTimer();
}

@override
void dispose() {
  super.dispose();
  _timer.cancel();
  errorController!.close();
}

bool hasError = false;
String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () => NavigationService().pop(),
          icon: AppIcons.iconWidget(Icons.arrow_back),
          color: AppColors.blackColor,
        ),
        backgroundColor: AppColors.backgroundColor,
        title: Text(
          LanguageConst.confirmOtp,
          style: AppTextStyles.textStyle26Black400(),
        ),
      ),
        backgroundColor: AppColors.backgroundColor,
        body: _getBody(),
      );
  }

  Widget _getBody() {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          _getBaseContainer(),
          getProgressBar(model.state),
          // IconButton(
          //   icon: Icon(Icons.arrow_back_ios,color: AppColors.backgroundColor,),
          //   onPressed: (){
          //     Navigator.pop(context);
          //   },).paddingSymmetric(vertical: SizeConfig.relativeHeight(5),),
        ],
      ),
    );
  }

  Widget _getBaseContainer() {
    return Column(
      children: [
       // Image.asset(AppIcons.loginBg,),
        SizeConfig.verticalSpacer(2),
        Image.asset(AppIcons.apexlogobgIcon1,
          width: SizeConfig.relativeHeight(20),
        //  height: SizeConfig.relativeHeight(20),
        ),
        SizeConfig.verticalSpacer(4),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LanguageConst.confirmOtp,
              style: AppTextStyles.textStyle18Blackbold()
              // TextStyle(color: AppColors.blackColor,
              //     fontWeight: FontWeight.bold,  fontSize: SizeConfig.setSp(30),),
            ),
            SizeConfig.verticalSpacer(2),
             Text(
             LanguageConst.confirmMsg,
             style: AppTextStyles.textStyle14Black()
             // TextStyle(
             //   fontSize: SizeConfig.setSp(13),
             //   fontWeight: FontWeight.bold,
             //   color: AppColors.lightBlack,
             // ),
             // textAlign: TextAlign.center,
              ),
            SizeConfig.verticalSpacer(5),

            PinCodeTextField(

              controller: model.pincodeOTPController,
              textStyle:  AppTextStyles.textStylepurpel(),
                 // TextStyle(color: AppColors.purpelLinearColor ),
              appContext: context,
              pastedTextStyle: const TextStyle(
               // color: AppColors.purpelLinearColor,
                fontWeight: FontWeight.bold,
              ),
              length: 6,
              // obscureText: true,
              // obscuringCharacter: '*',
              //  obscuringWidget: const FlutterLogo(
              //    size: 24,
              //  ),
            //  blinkWhenObscuring: true,
              animationType: AnimationType.fade,
              // validator: (v) {
              //   if (v!.length < 3) {
              //     return "I'm from validator";
              //   } else {
              //     return null;
              //   }
              // },

              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                activeColor: AppColors.purpelLinearColor2,
                //AppColors.transparent,
                inactiveColor: AppColors.purpelLinearColor2,
                //AppColors.transparent,

                fieldHeight: 48,
                fieldWidth: 48,
                //activeFillColor: Colors.white,
              ),
              keyboardType: TextInputType.number,
              //   cursorColor: Colors.black,
            //  animationDuration: const Duration(milliseconds: 300),
            //  enableActiveFill: true,
               //   errorAnimationController: errorController,
               //   controller: textEditingController,
              boxShadows:  [
                 BoxShadow(
                   offset: Offset(0, 1),
                   color: AppColors.purpelLinearColor2,
                   //blurRadius: 10,
                 )
              ],
            //  onCompleted: (v) {debugPrint("Completed");},
              // onTap: () {
              //   print("Pressed");
              // },
              onChanged: (value) {
                debugPrint(value);
                setState(() {
                  currentText = value;
                });
              },
              beforeTextPaste: (text) {debugPrint("Allowing to paste $text");
                return true;
              },
            ),
            SizeConfig.verticalSpacer(2),
            // Center(
            //   child: RichText(
            //       text: TextSpan(
            //         children: [
            //           TextSpan(
            //             text: LanguageConst.confirmTimerText,
            //             style: TextStyle(fontSize: 16, color: AppColors.blackColor),
            //           ),
            //           TextSpan(
            //             text: "00:$_start ",
            //             style: TextStyle(fontSize: 16, color: AppColors.blackColor),
            //           ),
            //           TextSpan(
            //             text: LanguageConst.confirmTimerText1,
            //             style: TextStyle(fontSize: 16, color: AppColors.blackColor),
            //           ),
            //         ],
            //       )),
            // ),

            _start != 0
                ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                          LanguageConst.confirmTimerText,
                          style: AppTextStyles.textStyle14Black()
                      //    TextStyle(  fontSize: SizeConfig.setSp(16), color: AppColors.blackColor),
                        ),
                        TextSpan(
                          text: "00:$_start ",
                          style: AppTextStyles.textStyle14Black()
                       //   TextStyle(  fontSize: SizeConfig.setSp(16), color: AppColors.blackColor),
                        ),
                        TextSpan(
                          text:
                          LanguageConst.confirmTimerText1,
                          style: AppTextStyles.textStyle14Black()
                      //    TextStyle(  fontSize: SizeConfig.setSp(16), color: AppColors.blackColor),
                        ),
                      ],
                    )),
              ],
            )
                : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                     LanguageConst.receiveCode,
                  style: AppTextStyles.textStyle14Black()
                  // TextStyle(
                  //     color: AppColors.blackColor,   fontSize: SizeConfig.setSp(16),),
                ),
                SizeConfig.horizontalSpacer(2),
                InkWell(
                  onTap: () {
                    setState(() {
                      _start = 30;
                      isLoading = true;
                      startTimer();
                    });
                  },
                  child:  Text(
                    LanguageConst.resend,
                    style:  AppTextStyles.textStyle16purpelbold()
                    // TextStyle(
                    //     color:AppColors.purpelLinearColor,
                    //     fontWeight: FontWeight.bold,
                    //   fontSize: SizeConfig.setSp(18),),
                  ),
                )
              ],
            ),

            SizeConfig.verticalSpacer(5),

            GestureDetector(
              onTap: () {
               // Get.toNamed(changePasswordScreenRoute);
                model.confirmOtpViewUser(currentText);
              },
              child: Container(
                height: SizeConfig.relativeHeight(6),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColors.purpelLinearColor,
                    borderRadius:
                    BorderRadius.circular(SizeConfig.relativeSize(5)),
                    gradient:  const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.purpelLinearColor,
                        AppColors.purpelLinearColor1,
                      ],
                    )),
                child: Text(
                  "confirm",
                  //LanguageConst.confirm,
                  style: AppTextStyles.textStyle14White400()
                  // TextStyle(
                  //   color: AppColors.backgroundColor,
                  //   fontSize: SizeConfig.setSp(18),
                  // ),
                ),
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: SizeConfig.relativeWidth(4)),
      ],
    );
  }
}