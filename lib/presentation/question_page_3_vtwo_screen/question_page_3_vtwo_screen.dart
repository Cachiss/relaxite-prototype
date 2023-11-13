import 'package:flutter/material.dart';
import 'package:marcos_camacho_s_application1/core/app_export.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:marcos_camacho_s_application1/widgets/custom_outlined_button.dart';

class QuestionPage3VtwoScreen extends StatelessWidget {
  const QuestionPage3VtwoScreen({Key? key}) : super(key: key);

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
                              horizontal: 18.h, vertical: 13.v),
                          child: Column(children: [
                            Container(
                                width: 305.h,
                                margin:
                                    EdgeInsets.only(left: 14.h, right: 19.h),
                                child: Text("msg_con_qu_frecuencia".tr,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.headlineSmall)),
                            SizedBox(height: 12.v),
                            _buildDiaramente(context),
                            SizedBox(height: 18.v),
                            _buildVariasVecesALaSemana(context),
                            SizedBox(height: 18.v),
                            _buildUnaVezALaSemana(context),
                            SizedBox(height: 18.v),
                            _buildNunca(context),
                            Spacer(),
                            SizedBox(height: 68.v),
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
            text: "lbl_pregunta_3_5".tr, margin: EdgeInsets.only(left: 15.h)));
  }

  /// Section Widget
  Widget _buildDiaramente(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_diaramente".tr, margin: EdgeInsets.only(left: 16.h));
  }

  /// Section Widget
  Widget _buildVariasVecesALaSemana(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_varias_veces_a_la".tr, margin: EdgeInsets.only(left: 16.h));
  }

  /// Section Widget
  Widget _buildUnaVezALaSemana(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_una_vez_a_la_semana".tr,
        margin: EdgeInsets.only(left: 16.h));
  }

  /// Section Widget
  Widget _buildNunca(BuildContext context) {
    return CustomOutlinedButton(
        text: "lbl_nunca".tr, margin: EdgeInsets.only(left: 16.h));
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

  /// Navigates to the questionPage4VtwoScreen when the action is triggered.
  onTapSiguiente(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.questionPage4VtwoScreen);
  }
}
