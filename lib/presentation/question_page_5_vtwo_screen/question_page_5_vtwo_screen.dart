import 'package:flutter/material.dart';
import 'package:marcos_camacho_s_application1/core/app_export.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:marcos_camacho_s_application1/widgets/custom_outlined_button.dart';

class QuestionPage5VtwoScreen extends StatelessWidget {
  const QuestionPage5VtwoScreen({Key? key}) : super(key: key);

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
                          horizontal: 18.h, vertical: 14.v),
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: 293.h,
                                margin:
                                    EdgeInsets.only(left: 14.h, right: 31.h),
                                child: Text("msg_te_sientes_aislado".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.headlineSmall))),
                        SizedBox(height: 44.v),
                        CustomOutlinedButton(
                            text: "msg_no_me_siento_conectado".tr,
                            margin: EdgeInsets.only(left: 16.h)),
                        SizedBox(height: 18.v),
                        _buildBotonRegistrar(context),
                        SizedBox(height: 18.v),
                        _buildBotonRegistrar1(context),
                        SizedBox(height: 18.v),
                        CustomOutlinedButton(
                            text: "lbl_no_estoy_seguro".tr,
                            margin: EdgeInsets.only(left: 16.h)),
                        SizedBox(height: 99.v),
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
            text: "lbl_pregunta_5_5".tr, margin: EdgeInsets.only(left: 15.h)));
  }

  /// Section Widget
  Widget _buildBotonRegistrar(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 71.h, vertical: 7.v),
        decoration: AppDecoration.outlineOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder32),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              SizedBox(
                  width: 173.h,
                  child: Text("msg_a_veces_me_siento".tr,
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
        padding: EdgeInsets.symmetric(horizontal: 45.h, vertical: 7.v),
        decoration: AppDecoration.outlineOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder32),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              SizedBox(
                  width: 224.h,
                  child: Text("msg_s_a_menudo_me".tr,
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

  /// Navigates to the loadingAnswersContainerScreen when the action is triggered.
  onTapSiguiente(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loadingAnswersContainerScreen);
  }
}
