import 'package:flutter/material.dart';
import 'package:marcos_camacho_s_application1/core/app_export.dart';
import 'package:marcos_camacho_s_application1/widgets/custom_outlined_button.dart';

class TestWelcomeScreen extends StatelessWidget {
  const TestWelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.amber700,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 765.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                  height: 496.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgIvanaCajinaDn,
                                            height: 496.v,
                                            width: 375.h,
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            imagePath: ImageConstant.img941,
                                            height: 1.v,
                                            width: 33.h,
                                            alignment: Alignment.topLeft,
                                            margin: EdgeInsets.only(left: 32.h))
                                      ]))),
                          _buildTwentyFour(context)
                        ]))))));
  }

  /// Section Widget
  Widget _buildTwentyFour(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 18.v),
            decoration: AppDecoration.outlineBlack9003
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder37),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("lbl_inicia_el_test".tr,
                      style: theme.textTheme.displaySmall),
                  SizedBox(height: 21.v),
                  SizedBox(
                      width: 311.h,
                      child: Text("msg_para_atender_a_tus".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style:
                              CustomTextStyles.bodyLargeRobotoSerifBlack900)),
                  SizedBox(height: 37.v),
                  CustomOutlinedButton(
                      height: 56.v,
                      width: 179.h,
                      text: "lbl_responder".tr,
                      buttonStyle: CustomButtonStyles.outlineBlackTL30,
                      buttonTextStyle: CustomTextStyles.titleLargeBlack900,
                      onPressed: () {
                        onTapResponder(context);
                      }),
                  SizedBox(height: 25.v)
                ])));
  }

  /// Navigates to the questionPage1VtwoScreen when the action is triggered.
  onTapResponder(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.questionPage1VtwoScreen);
  }
}
