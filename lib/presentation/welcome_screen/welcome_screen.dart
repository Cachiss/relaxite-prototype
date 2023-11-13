import 'package:flutter/material.dart';
import 'package:marcos_camacho_s_application1/core/app_export.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:marcos_camacho_s_application1/widgets/custom_floating_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  _buildFloatingActionButton(context),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          decoration: AppDecoration.outlineBlack900,
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            SizedBox(height: 37.v),
                            _buildAppBar(context),
                            SizedBox(height: 39.v),
                            Expanded(
                                child: SingleChildScrollView(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 22.h),
                                      child: Text("msg_querido_panfilo".tr,
                                          style:
                                              theme.textTheme.headlineLarge)),
                                  SizedBox(height: 10.v),
                                  Container(
                                      width: double.maxFinite,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.h, vertical: 18.v),
                                      decoration: AppDecoration.fillOnPrimary
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder29),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                                width: 339.h,
                                                margin:
                                                    EdgeInsets.only(right: 6.h),
                                                child: Text(
                                                    "msg_bienvenido_a_nuestra"
                                                        .tr,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: CustomTextStyles
                                                        .headlineSmallDMSans)),
                                            SizedBox(height: 38.v),
                                            Container(
                                                width: 324.h,
                                                margin: EdgeInsets.only(
                                                    left: 9.h, right: 12.h),
                                                child: Text(
                                                    "msg_estamos_emocionados"
                                                        .tr,
                                                    maxLines: 8,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: CustomTextStyles
                                                        .titleLargeRobotoBlack900)),
                                            SizedBox(height: 12.v),
                                            Container(
                                                width: 324.h,
                                                margin: EdgeInsets.only(
                                                    left: 9.h, right: 12.h),
                                                child: Text(
                                                    "msg_en_cada_paso_de".tr,
                                                    maxLines: 6,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style: CustomTextStyles
                                                        .titleLargeRobotoBlack900)),
                                            SizedBox(height: 12.v)
                                          ]))
                                ])))
                          ])))
                ]))));
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
        height: 55,
        width: 55,
        alignment: Alignment.bottomRight,
        child: CustomImageView(
            imagePath: ImageConstant.imgGroupBlack900,
            height: 27.5.v,
            width: 27.5.h));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 57.v,
        leadingWidth: 81.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowLeftWhiteA700,
            margin: EdgeInsets.only(left: 31.h, top: 5.v, bottom: 2.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          Container(
              height: 57.v,
              width: 60.h,
              margin: EdgeInsets.symmetric(horizontal: 31.h),
              child: Stack(alignment: Alignment.centerRight, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 57.v,
                        width: 60.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.h),
                            border: Border.all(
                                color: appTheme.black900, width: 2.h)))),
                CustomImageView(
                    imagePath: ImageConstant.imgImage17,
                    height: 53.v,
                    width: 56.h,
                    radius: BorderRadius.circular(26.h),
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.all(2.h))
              ]))
        ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
