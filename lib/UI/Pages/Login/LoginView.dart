import 'package:demo_upopp/Constants/AppColors.dart';
import 'package:demo_upopp/Constants/AppIcons.dart';
import 'package:demo_upopp/Constants/Localization/LanguageConstants.dart';
import 'package:demo_upopp/Constants/SizeConfig.dart';
import 'package:demo_upopp/Controller/Login/LoginViewController.dart';
import 'package:demo_upopp/Routing/RouteNames.dart';
import 'package:demo_upopp/Services/NavigationService.dart';
import 'package:demo_upopp/UI/Pages/Home/HomeView.dart';
import 'package:demo_upopp/UI/Styling/AppTextStyles.dart';
import 'package:demo_upopp/UI/Widgets/AppButton.dart';
import 'package:demo_upopp/UI/Widgets/AppTextFormField.dart';
import 'package:demo_upopp/UI/Widgets/BaseCommonWidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:local_auth/local_auth.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}
enum SupportState {
  unknown,
  supported,
  unSupported,
}

class _LoginViewState extends State<LoginView> with BaseCommonWidget {
  LoginViewController model =
      Get.isRegistered() ? Get.find() : Get.put(LoginViewController());

  final LocalAuthentication auth = LocalAuthentication();
  SupportState supportState = SupportState.unknown;
  List<BiometricType>? availableBiometrics;

  @override
  void initState() {
    auth.isDeviceSupported().then((bool isSupported) =>
        setState(() => supportState = isSupported ? SupportState.supported : SupportState.unSupported));
    super.initState();
    checkBiometric();
    getAvailableBiometrics();
  }

  Future<void> checkBiometric() async {
    late bool canCheckBiometric;
    try {
      canCheckBiometric = await auth.canCheckBiometrics;
      print("Biometric supported: $canCheckBiometric");
    } on PlatformException catch (e) {
      print(e);
      canCheckBiometric = false;
    }
  }

  Future<void> getAvailableBiometrics() async {
    late List<BiometricType> biometricTypes;
    try {
      biometricTypes = await auth.getAvailableBiometrics();
      print("supported biometrics $biometricTypes");
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) {
      return;
    }
    setState(() {
      availableBiometrics = biometricTypes;
    });
  }

  Future<void> authenticateWithBiometrics() async {
    try {
      final authenticated = await auth.authenticate(
          localizedReason: 'Authenticate with fingerprint or Face ID',
          options: const AuthenticationOptions(
            stickyAuth: true,
            biometricOnly: true,
          ));

      if (!mounted) {
        return;
      }

      if (authenticated) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()));
      }
    } on PlatformException catch (e) {
      print(e);
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: model,
      initState: (state) {},
      builder: (LoginViewController controller) {
        return SafeArea(
          top: false,
          child: LayoutBuilder(
            builder: (context, constraints) {
              SizeConfig().init(context, constraints);
              return Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: AppColors.backgroundColor,
                body: _getBody(),
              );
            },
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
    final ios = Theme.of(context).platform == TargetPlatform.iOS;
    return SingleChildScrollView(
    //  physics: ClampingScrollPhysics(),
      child: Form(
        key: model.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizeConfig.verticalSpacer(3),
            Image.asset(AppIcons.apexlogobgIcon1,
              width: SizeConfig.relativeHeight(27),
              height: SizeConfig.relativeHeight(27),),
            // SvgPicture.asset(
            //   AppIcons.verveLogoSvg,
            //   width: SizeConfig.relativeHeight(18),
            //   height: SizeConfig.relativeHeight(18),
            // ),
         //   SizeConfig.verticalSpacer(8),
            // Text(
            //   LanguageConst.signIn,
            //   style: TextStyle(
            //     color: AppColors.blackColor,
            //     fontSize: SizeConfig.setSp(26),
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            SizeConfig.verticalSpacer(2),
            // AppTextFormField(
            //   textHint: "${LanguageConst.email}",
            //   controller: model.emailController,
            //   textInputType: TextInputType.emailAddress,
            //   textCapitalization: TextCapitalization.none,
            //
            //   radius: SizeConfig.relativeSize(5),
            //   isLogin: true,
            // ),
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
            SizeConfig.verticalSpacer(3),
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
                //AppIcons.iconWidget(Icons.visibility_off_outlined)
                    :    SvgPicture.asset(
                  AppIcons.eyePassSvg,
                   width: SizeConfig.relativeHeight(3),
                   height: SizeConfig.relativeHeight(3),
                )
                //AppIcons.iconWidget(Icons.visibility_outlined),
              ),
            ),
            SizeConfig.verticalSpacer(2),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Flexible(
            //       child: AppCheckBox(
            //         LanguageConst.rememberMe,
            //         isSelect: model.isRemember,
            //         enable: true,
            //         textStyleDisable: AppTextStyles.textStyle14Gray400(),
            //         textStyleEnable: AppTextStyles.textStyle14Black400(),
            //         overflow: TextOverflow.visible,
            //       ),
            //     ),
            //     GestureDetector(
            //       onTap: () {
            //         model.redirectToPage(forgotPasswordViewRoute);
            //       },
            //       child: Text(
            //         LanguageConst.forgotPasswordWithQuestionMark,
            //         style: AppTextStyles.textStyleBlueColour(),
            //       ),
            //     ),
            //   ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    model.redirectToPage(forgotPasswordViewRoute);
                  },
                  child: Text(
                    LanguageConst.forgotPasswordWithQuestionMark,
                    style: AppTextStyles.textStyleBlueColour(),
                  ),
                ),
              ],
            ),
            SizeConfig.verticalSpacer(8),
            AppButton(
              text: LanguageConst.signIn,
              onPressed: model.loginUser,
              radius: SizeConfig.relativeSize(5),
            ),
            SizeConfig.verticalSpacer(2),
            InkWell(onTap: authenticateWithBiometrics,
              child: Image.asset(
                'assets/assetsimages/face_id.png',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     InkWell(onTap: authenticateWithBiometrics,
            //       child: Image.asset(
            //         'assets/assetsimages/face_id.png',
            //         width: 40,
            //         height: 40,
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //     const SizedBox(width: 20),
            //     ElevatedButton(
            //       onPressed: authenticateWithBiometrics,
            //       child: const Text("Authenticate"),
            //     )
            //   ],
            // ),
            SizeConfig.verticalSpacer(6),
            RichText(
              text: TextSpan(
                text: LanguageConst.dontHaveAccount,
                style: AppTextStyles.textStyle14Black(),
                children: [
                  TextSpan(
                      text: LanguageConst.register,
                      style: AppTextStyles.textStyle14Blue(),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          NavigationService().navigateTo(registerViewRoute);
                        }),
                ],
              ),
            ),
            SizeConfig.verticalSpacer(5),
            RichText(
              text: TextSpan(
                  text: LanguageConst.continueguest,
                  style: AppTextStyles.textStyle14Blue(),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                    //  model.loginUser;
                    //  NavigationService().navigateTo(loginViewRoute);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeView(),),
                      );
                    }),
            ),
          ],
        ).paddingSymmetric(horizontal: SizeConfig.relativeWidth(5)),
      ),
    );
  }
}
