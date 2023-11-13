import 'package:flutter/material.dart';
import 'package:marcos_camacho_s_application1/core/app_export.dart';
import 'package:marcos_camacho_s_application1/presentation/loading_answers_page/loading_answers_page.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:marcos_camacho_s_application1/widgets/custom_bottom_bar.dart';
import 'package:marcos_camacho_s_application1/widgets/custom_icon_button.dart';
import 'package:marcos_camacho_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResultsScreen extends StatelessWidget {
  ResultsScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: 393.h,
                padding: EdgeInsets.symmetric(vertical: 39.v),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 30.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                        Padding(
                            padding: EdgeInsets.only(left: 48.h),
                            child: Text("msg_observa_los_resultados".tr,
                                style: CustomTextStyles.headlineSmallRoboto)),
                        SizedBox(height: 33.v),
                        Padding(
                            padding: EdgeInsets.only(left: 48.h),
                            child: Text("msg_nivel_de_felicidad".tr,
                                style:
                                    CustomTextStyles.titleLargeRobotoBlack900)),
                        SizedBox(height: 8.v),
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 53.v,
                                width: 293.h,
                                child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 28.h),
                                              decoration: AppDecoration
                                                  .gradientYellowAToYellowA
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Container(
                                                  height: 30.v,
                                                  width: 81.h,
                                                  decoration: BoxDecoration(
                                                      color: theme.colorScheme
                                                          .onPrimary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.h),
                                                      border: Border.all(
                                                          color:
                                                              appTheme.black900,
                                                          width: 2.h))))),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgLocation,
                                          height: 26.adaptSize,
                                          width: 26.adaptSize,
                                          radius: BorderRadius.circular(3.h),
                                          alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(right: 87.h)),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgLocation,
                                          height: 26.adaptSize,
                                          width: 26.adaptSize,
                                          radius: BorderRadius.circular(3.h),
                                          alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(right: 30.h)),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  right: 49.h, bottom: 3.v),
                                              child: Text("lbl_92".tr,
                                                  style: CustomTextStyles
                                                      .titleLargeRobotoBlack900)))
                                    ]))),
                        SizedBox(height: 22.v),
                        Padding(
                            padding: EdgeInsets.only(left: 48.h),
                            child: Text("msg_nivel_de_soledad".tr,
                                style:
                                    CustomTextStyles.titleLargeRobotoBlack900)),
                        SizedBox(height: 16.v),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 57.h, right: 65.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("lbl_bajo".tr,
                                          style: theme.textTheme.bodyMedium),
                                      Spacer(flex: 54),
                                      Text("lbl_medio".tr,
                                          style: theme.textTheme.bodyMedium),
                                      Spacer(flex: 45),
                                      Text("lbl_alto".tr,
                                          style: theme.textTheme.bodyMedium)
                                    ]))),
                        SizedBox(height: 4.v),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: 295.h,
                                margin:
                                    EdgeInsets.only(left: 53.h, right: 45.h),
                                decoration: AppDecoration.outlineBlack9001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20),
                                child: CustomTextFormField(
                                    width: 57.h,
                                    controller: editTextController,
                                    textInputAction: TextInputAction.done,
                                    borderDecoration: TextFormFieldStyleHelper
                                        .outlineBlackLR20,
                                    filled: true,
                                    fillColor: appTheme.black900))),
                        SizedBox(height: 26.v),
                        Padding(
                            padding: EdgeInsets.only(left: 48.h),
                            child: Text("msg_nivel_de_satistacci_n".tr,
                                style:
                                    CustomTextStyles.titleLargeRobotoBlack900)),
                        SizedBox(height: 21.v),
                        _buildEightyEight(context),
                        SizedBox(height: 33.v),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: 255.h,
                                margin:
                                    EdgeInsets.only(left: 73.h, right: 65.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 33.h, vertical: 4.v),
                                decoration: AppDecoration.outlineBlack9004
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder32),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 3.v),
                                      Container(
                                          width: 180.h,
                                          margin: EdgeInsets.only(left: 5.h),
                                          child: Text(
                                              "msg_regresar_a_la_p_gina".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .titleLargeRobotoBlack900))
                                    ]))),
                        SizedBox(height: 34.v),
                        Container(
                            height: 185.v,
                            width: 393.h,
                            decoration: BoxDecoration(
                                color: appTheme.amber700,
                                borderRadius: BorderRadius.circular(92.h)))
                      ])))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 46.h),
                child: _buildBottomBar(context))));
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

  /// Section Widget
  Widget _buildEightyEight(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Container(
            height: 76.v,
            width: 326.h,
            margin: EdgeInsets.only(right: 14.h),
            child: Stack(alignment: Alignment.bottomLeft, children: [
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      height: 51.v,
                      width: 291.h,
                      margin: EdgeInsets.only(left: 2.h, bottom: 2.v),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.h),
                          border:
                              Border.all(color: appTheme.black900, width: 2.h),
                          gradient: LinearGradient(
                              begin: Alignment(0, 0.49),
                              end: Alignment(1, 0.49),
                              colors: [
                                appTheme.lightGreenA7007f,
                                appTheme.lightGreenA7007f,
                                appTheme.lightGreenA7007f
                              ])))),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      margin: EdgeInsets.only(top: 21.v, right: 31.h),
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      decoration: AppDecoration.outlineBlack9001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage21,
                                height: 28.v,
                                width: 26.h,
                                margin:
                                    EdgeInsets.only(top: 11.v, bottom: 14.v)),
                            Spacer(),
                            SizedBox(
                                height: 53.v,
                                child: VerticalDivider(
                                    width: 3.h,
                                    thickness: 3.v,
                                    color: appTheme.black900,
                                    endIndent: 11.h)),
                            CustomImageView(
                                imagePath: ImageConstant.imgImage20,
                                height: 28.v,
                                width: 30.h,
                                margin: EdgeInsets.only(
                                    left: 19.h, top: 11.v, bottom: 14.v))
                          ]))),
              CustomIconButton(
                  height: 35.adaptSize,
                  width: 35.adaptSize,
                  padding: EdgeInsets.all(9.h),
                  decoration: IconButtonStyleHelper.outlineBlackTL17,
                  alignment: Alignment.topRight,
                  child: CustomImageView(imagePath: ImageConstant.imgGroup25)),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 9.h, top: 1.v),
                      child: Row(children: [
                        Text("lbl_0".tr, style: theme.textTheme.bodyMedium),
                        Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Text("lbl_1".tr,
                                style: theme.textTheme.bodyMedium)),
                        Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Text("lbl_2".tr,
                                style: theme.textTheme.bodyMedium)),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("lbl_3".tr,
                                style: theme.textTheme.bodyMedium)),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("lbl_4".tr,
                                style: theme.textTheme.bodyMedium)),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("lbl_5".tr,
                                style: theme.textTheme.bodyMedium)),
                        Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Text("lbl_6".tr,
                                style: theme.textTheme.bodyMedium)),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("lbl_7".tr,
                                style: theme.textTheme.bodyMedium)),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("lbl_8".tr,
                                style: theme.textTheme.bodyMedium)),
                        Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Text("lbl_9".tr,
                                style: theme.textTheme.bodyMedium)),
                        Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Text("lbl_10".tr,
                                style: theme.textTheme.bodyMedium))
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.loadingAnswersPage;
      case BottomBarEnum.Icontips:
        return "/";
      case BottomBarEnum.Edit:
        return "/";
      case BottomBarEnum.Search:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.loadingAnswersPage:
        return LoadingAnswersPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
