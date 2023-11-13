import 'package:flutter/material.dart';
import 'package:marcos_camacho_s_application1/core/app_export.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:marcos_camacho_s_application1/widgets/custom_outlined_button.dart';

class QuestionPage2VtwoScreen extends StatelessWidget {
  const QuestionPage2VtwoScreen({Key? key}) : super(key: key);

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
                  Expanded(
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 18.h, vertical: 25.v),
                          child: Column(children: [
                            Container(
                                width: 310.h,
                                margin: EdgeInsets.symmetric(horizontal: 14.h),
                                child: Text("msg_qu_tan_satisfecho".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.headlineSmall)),
                            SizedBox(height: 29.v),
                            _buildMuySatisfecho(context),
                            SizedBox(height: 18.v),
                            _buildSatisfecho(context),
                            SizedBox(height: 18.v),
                            Container(
                                width: 323.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30.h, vertical: 20.v),
                                decoration: AppDecoration.outlineOnPrimary
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder32),
                                child: Text("lbl_neutral".tr,
                                    style: theme.textTheme.titleLarge)),
                            SizedBox(height: 18.v),
                            _buildInsatisfecho(context),
                            Spacer(),
                            SizedBox(height: 56.v),
                            _buildSiguiente(context)
                          ])))
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
            text: "lbl_pregunta_2_5".tr, margin: EdgeInsets.only(left: 15.h)));
  }

  /// Section Widget
  Widget _buildMuySatisfecho(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_muy_satisfecho".tr, margin: EdgeInsets.only(left: 16.h));
  }

  /// Section Widget
  Widget _buildSatisfecho(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_satisfecho".tr, margin: EdgeInsets.only(left: 16.h));
  }

  /// Section Widget
  Widget _buildInsatisfecho(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_insatisfecho".tr, margin: EdgeInsets.only(left: 16.h));
  }

  /// Section Widget
  Widget _buildSiguiente(BuildContext context) {
    return CustomOutlinedButton(
        height: 60.v,
        text: "lbl_siguiente".tr,
        margin: EdgeInsets.only(left: 16.h),
        buttonStyle: CustomButtonStyles.outlineBlack,
        buttonTextStyle: CustomTextStyles.headlineSmallRegular,
        onPressed: () {
          onTapSiguiente(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the questionPage3VtwoScreen when the action is triggered.
  onTapSiguiente(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.questionPage3VtwoScreen);
  }
}
