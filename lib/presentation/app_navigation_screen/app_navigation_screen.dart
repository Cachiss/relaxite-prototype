import 'package:flutter/material.dart';
import 'package:marcos_camacho_s_application1/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Question Page 3 vTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.questionPage3VtwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "LogIn with user".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginWithUserScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Welcome One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.welcomeOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Welcome".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.welcomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "page main".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.pageMainScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "testimonios".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.testimoniosScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Test welcome".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.testWelcomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Question Page 1 vTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.questionPage1VtwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Question Page 2 vTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.questionPage2VtwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Question Page 4 vTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.questionPage4VtwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Question Page 5 vTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.questionPage5VtwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Loading answers - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loadingAnswersContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "results".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.resultsScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
