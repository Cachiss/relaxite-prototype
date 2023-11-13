import 'package:flutter/material.dart';
import 'package:marcos_camacho_s_application1/core/app_export.dart';
import 'package:marcos_camacho_s_application1/widgets/custom_outlined_button.dart';
import 'package:marcos_camacho_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginWithUserScreen extends StatelessWidget {
  LoginWithUserScreen({Key? key}) : super(key: key);

  TextEditingController usuarioocorrepController = TextEditingController();

  TextEditingController contraseaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 42.h, vertical: 22.v),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Text("lbl_relaxite".tr,
                      style: CustomTextStyles.rochesterBlack900),
                  SizedBox(height: 7.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgIllustrationSuccess,
                      height: 250.v,
                      width: 287.h),
                  SizedBox(height: 45.v),
                  Padding(
                      padding: EdgeInsets.only(left: 12.h, right: 13.h),
                      child: CustomTextFormField(
                          controller: usuarioocorrepController,
                          hintText: "msg_usuario_o_correp".tr)),
                  SizedBox(height: 29.v),
                  Padding(
                      padding: EdgeInsets.only(left: 14.h, right: 11.h),
                      child: CustomTextFormField(
                          controller: contraseaController,
                          hintText: "lbl_contrase_a".tr,
                          textInputAction: TextInputAction.done)),
                  SizedBox(height: 53.v),
                  CustomOutlinedButton(
                      height: 60.v,
                      text: "lbl_inicia_sesi_n".tr,
                      margin: EdgeInsets.only(left: 14.h, right: 11.h),
                      buttonStyle: CustomButtonStyles.outlineBlackTL30,
                      buttonTextStyle: theme.textTheme.headlineLarge!,
                      onPressed: () {
                        onTapIniciaSesin(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the testWelcomeScreen when the action is triggered.
  onTapIniciaSesin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.testWelcomeScreen);
  }
}
