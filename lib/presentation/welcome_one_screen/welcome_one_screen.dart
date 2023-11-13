import 'package:flutter/material.dart';
import 'package:marcos_camacho_s_application1/core/app_export.dart';
import 'package:marcos_camacho_s_application1/widgets/custom_outlined_button.dart';

class WelcomeOneScreen extends StatelessWidget {
  const WelcomeOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 32.v),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 34.v),
                  SizedBox(
                      height: 541.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 50.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(left: 10.h),
                                          child: Text("lbl_relaxite".tr,
                                              style: CustomTextStyles
                                                  .rochesterBlack900)),
                                      Spacer(),
                                      CustomOutlinedButton(
                                          height: 60.v,
                                          text: "lbl_inicia_sesi_n".tr,
                                          margin: EdgeInsets.only(right: 12.h),
                                          buttonStyle: CustomButtonStyles
                                              .outlineBlackTL30,
                                          buttonTextStyle:
                                              theme.textTheme.headlineLarge!,
                                          onPressed: () {
                                            onTapIniciaSesin(context);
                                          })
                                    ]))),
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgIllustrationSuccessAmber700,
                            height: 408.v,
                            width: 375.h,
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.only(bottom: 52.v))
                      ])),
                  SizedBox(height: 12.v),
                  CustomOutlinedButton(
                      height: 60.v,
                      width: 262.h,
                      text: "lbl_registrate".tr,
                      buttonStyle: CustomButtonStyles.outlineBlackTL30,
                      buttonTextStyle: theme.textTheme.headlineLarge!,
                      onPressed: () {
                        onTapRegistrate(context);
                      }),
                  SizedBox(height: 14.v),
                  SizedBox(width: 162.h, child: Divider()),
                  SizedBox(height: 13.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage1,
                        height: 65.v,
                        width: 70.h,
                        radius: BorderRadius.circular(32.h),
                        onTap: () {
                          onTapImgImageOne(context);
                        }),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage6,
                        height: 55.adaptSize,
                        width: 55.adaptSize,
                        margin:
                            EdgeInsets.only(left: 15.h, top: 6.v, bottom: 4.v),
                        onTap: () {
                          onTapImgImageSix(context);
                        })
                  ])
                ]))));
  }

  /// Navigates to the testWelcomeScreen when the action is triggered.
  onTapIniciaSesin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.testWelcomeScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapRegistrate(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  /// Navigates to the testWelcomeScreen when the action is triggered.
  onTapImgImageOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.testWelcomeScreen);
  }

  /// Navigates to the testWelcomeScreen when the action is triggered.
  onTapImgImageSix(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.testWelcomeScreen);
  }
}
