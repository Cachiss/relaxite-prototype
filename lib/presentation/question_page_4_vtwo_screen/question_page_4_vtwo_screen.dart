import 'package:flutter/material.dart';
import 'package:marcos_camacho_s_application1/core/app_export.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:marcos_camacho_s_application1/widgets/custom_outlined_button.dart';

class QuestionPage4VtwoScreen extends StatelessWidget {
  const QuestionPage4VtwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  CustomImageView(
                      imagePath: ImageConstant.img941,
                      height: 1.v,
                      width: 33.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 32.h)),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 18.h, vertical: 13.v),
                      child: Column(children: [
                        Container(
                            width: 308.h,
                            margin: EdgeInsets.only(left: 14.h, right: 16.h),
                            child: Text("msg_tienes_un_c_rculo".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.headlineSmall)),
                        SizedBox(height: 22.v),
                        CustomOutlinedButton(
                            text: "msg_s_tengo_un_c_rculo".tr,
                            margin: EdgeInsets.only(left: 16.h)),
                        SizedBox(height: 18.v),
                        CustomOutlinedButton(
                            text: "msg_s_pero_no_son".tr,
                            margin: EdgeInsets.only(left: 16.h)),
                        SizedBox(height: 18.v),
                        _buildBotonRegistrar(context),
                        SizedBox(height: 18.v),
                        _buildBotonRegistrar1(context),
                        SizedBox(height: 63.v),
                        CustomOutlinedButton(
                            height: 60.v,
                            text: "lbl_siguiente".tr,
                            margin: EdgeInsets.only(left: 16.h),
                            buttonStyle: CustomButtonStyles.outlineBlack,
                            buttonTextStyle:
                                CustomTextStyles.headlineSmallRegular,
                            onPressed: () {
                              onTapSiguiente(context);
                            }),
                        SizedBox(height: 5.v)
                      ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 70.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 32.h),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "lbl_pregunta_4_5".tr, margin: EdgeInsets.only(left: 15.h)));
  }

  /// Section Widget
  Widget _buildBotonRegistrar(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 55.h, vertical: 2.v),
        decoration: AppDecoration.outlineOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder32),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 7.v),
              SizedBox(
                  width: 204.h,
                  child: Text("msg_no_tengo_a_nadie".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleLarge))
            ]));
  }

  /// Section Widget
  Widget _buildBotonRegistrar1(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 3.v),
        decoration: AppDecoration.outlineOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder32),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 5.v),
              SizedBox(
                  width: 261.h,
                  child: Text("msg_no_quiero_hablar".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleLarge))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the questionPage5VtwoScreen when the action is triggered.
  onTapSiguiente(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.questionPage5VtwoScreen);
  }
}
