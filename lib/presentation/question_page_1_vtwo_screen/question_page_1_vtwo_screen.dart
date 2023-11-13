import 'package:flutter/material.dart';
import 'package:marcos_camacho_s_application1/core/app_export.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:marcos_camacho_s_application1/widgets/custom_outlined_button.dart';

class QuestionPage1VtwoScreen extends StatelessWidget {
  const QuestionPage1VtwoScreen({Key? key}) : super(key: key);

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
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    width: 281.h,
                                    margin: EdgeInsets.only(
                                        left: 14.h, right: 43.h),
                                    child: Text("msg_con_qu_frecuencia2".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.headlineSmall))),
                            SizedBox(height: 29.v),
                            _buildNunca(context),
                            SizedBox(height: 18.v),
                            _buildRaraVez(context),
                            SizedBox(height: 18.v),
                            _buildOcasionalmente(context),
                            SizedBox(height: 18.v),
                            _buildSiempre(context),
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
        leading: AppbarLeadingIconbuttonTwo(
            imagePath: ImageConstant.imgArrowLeftWhiteA700,
            margin: EdgeInsets.only(left: 32.h),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "lbl_pregunta_1_5".tr, margin: EdgeInsets.only(left: 15.h)));
  }

  /// Section Widget
  Widget _buildNunca(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_nunca".tr, margin: EdgeInsets.only(left: 16.h));
  }

  /// Section Widget
  Widget _buildRaraVez(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_rara_vez".tr, margin: EdgeInsets.only(left: 16.h));
  }

  /// Section Widget
  Widget _buildOcasionalmente(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_ocasionalmente".tr, margin: EdgeInsets.only(left: 16.h));
  }

  /// Section Widget
  Widget _buildSiempre(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_siempre".tr, margin: EdgeInsets.only(left: 16.h));
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

  /// Navigates to the questionPage2VtwoScreen when the action is triggered.
  onTapSiguiente(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.questionPage2VtwoScreen);
  }
}
