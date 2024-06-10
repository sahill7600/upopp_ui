import 'package:demo_upopp/Constants/AppColors.dart';
import 'package:demo_upopp/Constants/AppIcons.dart';
import 'package:demo_upopp/Constants/Localization/LanguageConstants.dart';
import 'package:demo_upopp/Constants/SizeConfig.dart';
import 'package:demo_upopp/Controller/Register/RegisterViewController.dart';
import 'package:demo_upopp/Services/NavigationService.dart';
import 'package:demo_upopp/UI/Styling/AppTextStyles.dart';
import 'package:demo_upopp/UI/Widgets/AppButton.dart';
import 'package:demo_upopp/UI/Widgets/AppTextFormField.dart';
import 'package:demo_upopp/UI/Widgets/BaseCommonWidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> with BaseCommonWidget {
  RegisterViewController model = Get.put(RegisterViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: model,
      initState: (state) {},
      builder: (RegisterViewController controller) {
        return SafeArea(
          top: false,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: AppColors.backgroundColor,
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
                LanguageConst.register,
                style: AppTextStyles.textStyle26Black(),
              ),
            ),
            body: _getBody(),
          ),
        );
      },
    );
  }

  Widget _getBody() {
    return Stack(
      children: <Widget>[
        _getBaseContainer(),
        getProgressBar(model.state),
      ],
    );
  }

  Widget _getBaseContainer() {
    String? gender;
    return SingleChildScrollView(
      child: Form(
        key: model.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizeConfig.verticalSpacer(8),
            Text(LanguageConst.createacc,style: TextStyle(fontSize: SizeConfig.setSp(24),color:AppColors.blackColor,fontWeight: FontWeight.bold)),
            SizeConfig.verticalSpacer(2),
            IntlPhoneField(
              controller: model.phoneController,
              focusNode: model.focusNode,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              languageCode: "en",
              onChanged: (phone) {
                print(phone.completeNumber);
              },
              onCountryChanged: (country) {
                print('Country changed to: ' + country.name);
              },
            ),
           // SizeConfig.verticalSpacer(2),
            AppTextFormField(
              controller: model.firstNameController,
             // textHint: LanguageConst.firstname,
              textHint: "Name",
              paddingText: EdgeInsets.zero,
              textInputType: TextInputType.name,
              isLogin: true,
            ),
            SizeConfig.verticalSpacer(2),
            // AppTextFormField(
            //   controller: model.lastNameController,
            //   textHint: LanguageConst.lastName,
            //   paddingText: EdgeInsets.zero,
            //   textInputType: TextInputType.name,
            //   isLogin: true,
            // ),
            // SizeConfig.verticalSpacer(2),
            AppTextFormField(
              controller: model.emailController,
              textHint: LanguageConst.email,
              isLogin: true,
              paddingText: EdgeInsets.zero,
              textInputType: TextInputType.emailAddress,
              // padding: EdgeInsets.symmetric(
              //     vertical: 8.0, horizontal: 20.0),
              // margin: EdgeInsets.only(top: 16.0),
            ),
            SizeConfig.verticalSpacer(2),
            AppTextFormField(
              controller: model.passwordController,
              textHint: LanguageConst.password,
              radius: SizeConfig.relativeSize(5),
              isLogin: true,
              paddingText: EdgeInsets.zero,
              textInputType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              isObsecureText: model.isPasswordShow,
              suffixWidget: IconButton(
                onPressed: () {
                  model.isPasswordShow = !model.isPasswordShow;
                  model.update();
                },
                icon: model.isPasswordShow
                    ? SvgPicture.asset(
                  AppIcons.eyePassSvg,
                  width: SizeConfig.relativeHeight(3),
                  height: SizeConfig.relativeHeight(3),
                )
                    : SvgPicture.asset(
                  AppIcons.eyePassSvg,
                  width: SizeConfig.relativeHeight(3),
                  height: SizeConfig.relativeHeight(3),
                )
              ),
            ),
            SizeConfig.verticalSpacer(2),
            AppTextFormField(
              controller: model.rePasswordController,
              textHint: LanguageConst.repeatpassword,
              radius: SizeConfig.relativeSize(5),
              isLogin: true,
              paddingText: EdgeInsets.zero,
              textInputType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              isObsecureText: model.isPasswordShow,
              suffixWidget: IconButton(
                onPressed: () {
                  model.isPasswordShow = !model.isPasswordShow;
                  model.update();
                },
                icon: model.isPasswordShow
                    ? SvgPicture.asset(
                  AppIcons.eyePassSvg,
                  width: SizeConfig.relativeHeight(3),
                  height: SizeConfig.relativeHeight(3),
                )
                    : SvgPicture.asset(
                  AppIcons.eyePassSvg,
                  width: SizeConfig.relativeHeight(3),
                  height: SizeConfig.relativeHeight(3),
                )
              ),
            ),


            // Column(
            //   children: [
            //
            //     Text("What is your gender?", style: TextStyle(
            //         fontSize: 18
            //     ),),
            //
            //     Divider(),
            //
            //     RadioListTile(
            //       title: Text("Male"),
            //       value: "male",
            //       groupValue: gender,
            //       onChanged: (value){
            //         setState(() {
            //           gender = value.toString();
            //         });
            //       },
            //     ),
            //
            //     RadioListTile(
            //       title: Text("Female"),
            //       value: "female",
            //       groupValue: gender,
            //       onChanged: (value){
            //         setState(() {
            //           gender = value.toString();
            //         });
            //       },
            //     ),
            //
            //     RadioListTile(
            //       title: Text("Other"),
            //       value: "other",
            //       groupValue: gender,
            //       onChanged: (value){
            //         setState(() {
            //           gender = value.toString();
            //         });
            //       },
            //     )
            //   ],
            // ),
            SizeConfig.verticalSpacer(4),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: LanguageConst.iAgreeTo,
                    style: AppTextStyles.textStyle14Black(),
                    children: [
                      TextSpan(
                          text: LanguageConst.policy,
                          style: AppTextStyles.textStyle14Blue(),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              debugPrint("Click on Terms and Conditions");
                            }),
                    ],
                  ),
                ),
              ],
            ),
            SizeConfig.verticalSpacer(4),
            AppButton(
              text: LanguageConst.signIn,
              onPressed: model.registerUser,
              radius: 9.2,
            ),

            //button
            SizeConfig.verticalSpacer(4),

            // already account
            RichText(
              text: TextSpan(
                text: LanguageConst.alreadyHaveAccount,
                style: AppTextStyles.textStyle14Black(),
                children: [
                  TextSpan(
                      text: LanguageConst.signIn,
                      style: AppTextStyles.textStyle14Blue(),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          NavigationService().pop();
                        }),
                ],
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: SizeConfig.relativeWidth(5)),
      ),
    );
  }
}
