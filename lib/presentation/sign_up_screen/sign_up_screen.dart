import 'package:flutter/material.dart';
import 'package:marcos_camacho_s_application1/core/app_export.dart';
import 'package:marcos_camacho_s_application1/widgets/custom_outlined_button.dart';
import 'package:marcos_camacho_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController nombresController = TextEditingController();

  TextEditingController apellidosController = TextEditingController();

  TextEditingController correoelectrnicoController = TextEditingController();

  TextEditingController contraseaController = TextEditingController();

  TextEditingController textboxConfContraController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 53.h, vertical: 22.v),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                      height: 280.v,
                      width: 264.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Text("lbl_relaxite".tr,
                                style: CustomTextStyles.rochesterBlack900)),
                        CustomImageView(
                            imagePath: ImageConstant
                                .imgIllustrationSuccessAmber700164x172,
                            height: 164.v,
                            width: 172.h,
                            alignment: Alignment.bottomCenter)
                      ])),
                  SizedBox(height: 10.v),
                  _buildNombres(context),
                  SizedBox(height: 15.v),
                  _buildApellidos(context),
                  SizedBox(height: 15.v),
                  _buildCorreoelectrnico(context),
                  SizedBox(height: 15.v),
                  _buildContrasea(context),
                  SizedBox(height: 15.v),
                  _buildTextboxConfContra(context),
                  SizedBox(height: 26.v),
                  _buildRegistrate(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildNombres(BuildContext context) {
    return CustomTextFormField(
        controller: nombresController, hintText: "lbl_nombre_s".tr);
  }

  /// Section Widget
  Widget _buildApellidos(BuildContext context) {
    return CustomTextFormField(
        controller: apellidosController, hintText: "lbl_apellido_s".tr);
  }

  /// Section Widget
  Widget _buildCorreoelectrnico(BuildContext context) {
    return CustomTextFormField(
        controller: correoelectrnicoController,
        hintText: "msg_correo_electr_nico".tr);
  }

  /// Section Widget
  Widget _buildContrasea(BuildContext context) {
    return CustomTextFormField(
        controller: contraseaController, hintText: "lbl_contrase_a".tr);
  }

  /// Section Widget
  Widget _buildTextboxConfContra(BuildContext context) {
    return CustomTextFormField(
        controller: textboxConfContraController,
        hintText: "msg_confirma_la_contrase_a".tr,
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildRegistrate(BuildContext context) {
    return CustomOutlinedButton(
        height: 60.v,
        text: "lbl_registrate".tr,
        buttonStyle: CustomButtonStyles.outlineBlackTL30,
        buttonTextStyle: theme.textTheme.headlineLarge!,
        onPressed: () {
          onTapRegistrate(context);
        });
  }

  /// Navigates to the testWelcomeScreen when the action is triggered.
  onTapRegistrate(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.testWelcomeScreen);
  }
}
