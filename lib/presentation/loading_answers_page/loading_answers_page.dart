import 'package:flutter/material.dart';
import 'package:marcos_camacho_s_application1/core/app_export.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/custom_app_bar.dart';

class LoadingAnswersPage extends StatelessWidget {
  const LoadingAnswersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 92.v),
                    child: Column(children: [
                      GestureDetector(
                          onTap: () {
                            onTapFrame(context);
                          },
                          child: Container(
                              height: 300.adaptSize,
                              width: 300.adaptSize,
                              decoration: AppDecoration.outlineIndigo.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder150),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgIntersect,
                                  height: 298.v,
                                  width: 149.h,
                                  alignment: Alignment.centerRight))),
                      SizedBox(height: 45.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 87.h),
                              child: Text("msg_cargando_resultados".tr,
                                  style: CustomTextStyles
                                      .titleLargeRobotoBlack900))),
                      SizedBox(height: 133.v),
                      Container(
                          height: 185.v,
                          width: 393.h,
                          decoration: BoxDecoration(
                              color: appTheme.amber700,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(93.h),
                                  topRight: Radius.circular(92.h),
                                  bottomLeft: Radius.circular(93.h),
                                  bottomRight: Radius.circular(92.h))))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 62.v,
        title: Container(
            height: 47.v,
            width: 50.h,
            margin: EdgeInsets.only(left: 40.h),
            child: Stack(alignment: Alignment.centerLeft, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 47.v,
                      width: 50.h,
                      decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                          borderRadius: BorderRadius.circular(25.h),
                          border: Border.all(
                              color: appTheme.black900, width: 2.h)))),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftWhiteA700,
                  height: 24.v,
                  width: 17.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.fromLTRB(13.h, 11.v, 20.h, 11.v),
                  onTap: () {
                    onTapImgArrowLeft(context);
                  })
            ])),
        actions: [
          Container(
              height: 56.999996.v,
              width: 60.h,
              margin: EdgeInsets.symmetric(horizontal: 40.h),
              child: Stack(alignment: Alignment.center, children: [
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
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(2.h, 2.v, 2.h, 1.v))
              ]))
        ]);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the resultsScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resultsScreen);
  }
}
