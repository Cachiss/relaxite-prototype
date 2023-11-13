import '../testimonios_screen/widgets/testimonios_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:marcos_camacho_s_application1/core/app_export.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/custom_app_bar.dart';

class TestimoniosScreen extends StatelessWidget {
  const TestimoniosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: 393.h,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.only(left: 49.h),
                          child: Text("lbl_foro".tr,
                              style:
                                  CustomTextStyles.titleLargeRobotoBlack900)),
                      SizedBox(height: 28.v),
                      SizedBox(
                          height: 709.v,
                          width: 393.h,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                SizedBox(
                                    width: double.maxFinite,
                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 53.h, right: 45.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  _buildTestimonios(context),
                                                  SizedBox(height: 29.v),
                                                  Text("lbl_cristian_cruz".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumDMSansBlack900),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Container(
                                                          width: 124.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 72.h),
                                                          child: Text(
                                                              "msg_hoy_tengo_una_cita"
                                                                  .tr,
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: CustomTextStyles
                                                                  .bodySmallDMSans)))
                                                ])))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        margin: EdgeInsets.fromLTRB(
                                            53.h, 455.v, 45.h, 159.v),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 11.h, vertical: 10.v),
                                        decoration: AppDecoration
                                            .outlineBlack9001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder32),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                  height: 70.adaptSize,
                                                  width: 70.adaptSize,
                                                  margin:
                                                      EdgeInsets.only(top: 1.v),
                                                  decoration: AppDecoration
                                                      .outlineBlack9002
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder20),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage11,
                                                      height: 66.adaptSize,
                                                      width: 66.adaptSize,
                                                      radius:
                                                          BorderRadius.circular(
                                                              20.h),
                                                      alignment:
                                                          Alignment.center)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgUnion,
                                                  height: 33.adaptSize,
                                                  width: 33.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      top: 19.v,
                                                      right: 8.h,
                                                      bottom: 18.v))
                                            ]))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgLownavbar,
                                    height: 185.v,
                                    width: 393.h,
                                    alignment: Alignment.bottomCenter)
                              ]))
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 103.v,
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

  /// Section Widget
  Widget _buildTestimonios(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 19.v);
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return TestimoniosItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
