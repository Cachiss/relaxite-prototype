import 'package:flutter/material.dart';
import 'package:marcos_camacho_s_application1/presentation/question_page_3_vtwo_screen/question_page_3_vtwo_screen.dart';
import 'package:marcos_camacho_s_application1/presentation/login_with_user_screen/login_with_user_screen.dart';
import 'package:marcos_camacho_s_application1/presentation/welcome_one_screen/welcome_one_screen.dart';
import 'package:marcos_camacho_s_application1/presentation/welcome_screen/welcome_screen.dart';
import 'package:marcos_camacho_s_application1/presentation/page_main_screen/page_main_screen.dart';
import 'package:marcos_camacho_s_application1/presentation/testimonios_screen/testimonios_screen.dart';
import 'package:marcos_camacho_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:marcos_camacho_s_application1/presentation/test_welcome_screen/test_welcome_screen.dart';
import 'package:marcos_camacho_s_application1/presentation/question_page_1_vtwo_screen/question_page_1_vtwo_screen.dart';
import 'package:marcos_camacho_s_application1/presentation/question_page_2_vtwo_screen/question_page_2_vtwo_screen.dart';
import 'package:marcos_camacho_s_application1/presentation/question_page_4_vtwo_screen/question_page_4_vtwo_screen.dart';
import 'package:marcos_camacho_s_application1/presentation/question_page_5_vtwo_screen/question_page_5_vtwo_screen.dart';
import 'package:marcos_camacho_s_application1/presentation/loading_answers_container_screen/loading_answers_container_screen.dart';
import 'package:marcos_camacho_s_application1/presentation/results_screen/results_screen.dart';
import 'package:marcos_camacho_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String questionPage3VtwoScreen = '/question_page_3_vtwo_screen';

  static const String loginWithUserScreen = '/login_with_user_screen';

  static const String welcomeOneScreen = '/welcome_one_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String pageMainScreen = '/page_main_screen';

  static const String testimoniosScreen = '/testimonios_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String testWelcomeScreen = '/test_welcome_screen';

  static const String questionPage1VtwoScreen = '/question_page_1_vtwo_screen';

  static const String questionPage2VtwoScreen = '/question_page_2_vtwo_screen';

  static const String questionPage4VtwoScreen = '/question_page_4_vtwo_screen';

  static const String questionPage5VtwoScreen = '/question_page_5_vtwo_screen';

  static const String loadingAnswersPage = '/loading_answers_page';

  static const String loadingAnswersContainerScreen =
      '/loading_answers_container_screen';

  static const String resultsScreen = '/results_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    questionPage3VtwoScreen: (context) => QuestionPage3VtwoScreen(),
    loginWithUserScreen: (context) => LoginWithUserScreen(),
    welcomeOneScreen: (context) => WelcomeOneScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    pageMainScreen: (context) => PageMainScreen(),
    testimoniosScreen: (context) => TestimoniosScreen(),
    signUpScreen: (context) => SignUpScreen(),
    testWelcomeScreen: (context) => TestWelcomeScreen(),
    questionPage1VtwoScreen: (context) => QuestionPage1VtwoScreen(),
    questionPage2VtwoScreen: (context) => QuestionPage2VtwoScreen(),
    questionPage4VtwoScreen: (context) => QuestionPage4VtwoScreen(),
    questionPage5VtwoScreen: (context) => QuestionPage5VtwoScreen(),
    loadingAnswersContainerScreen: (context) => LoadingAnswersContainerScreen(),
    resultsScreen: (context) => ResultsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
