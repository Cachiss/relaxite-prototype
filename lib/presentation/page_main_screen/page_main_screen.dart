import '../page_main_screen/widgets/seventyone_item_widget.dart';
import '../page_main_screen/widgets/seventytwo_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:marcos_camacho_s_application1/core/app_export.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:marcos_camacho_s_application1/widgets/app_bar/custom_app_bar.dart';

class PageMainScreen extends StatelessWidget {
  const PageMainScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 14.v),
            child: Column(
              children: [
                _buildSeventyTwo(context),
                SizedBox(height: 16.v),
                Divider(
                  color: appTheme.black900,
                  indent: 22.h,
                  endIndent: 23.h,
                ),
                SizedBox(height: 21.v),
                SizedBox(
                  height: 150.v,
                  width: 295.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 39.h,
                            top: 15.v,
                          ),
                          child: Text(
                            "lbl_consejo_del_d_a".tr,
                            style: CustomTextStyles.titleMediumRobotoBlack900,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 9.h,
                            vertical: 30.v,
                          ),
                          decoration: AppDecoration.outlineBlack9001.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 165.h,
                                margin: EdgeInsets.only(
                                  top: 8.v,
                                  bottom: 6.v,
                                ),
                                child: Text(
                                  "msg_tomar_un_momento".tr,
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage22,
                                height: 85.v,
                                width: 73.h,
                                margin: EdgeInsets.only(left: 17.h),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.v),
                Text(
                  "lbl_recomendaciones".tr,
                  style: CustomTextStyles.titleMediumRobotoBlack900,
                ),
                SizedBox(height: 18.v),
                _buildSeventyOne(context),
                _buildSixtyThree(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 103.v,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.only(left: 51.h),
      ),
      actions: [
        Container(
          height: 56.999996.v,
          width: 60.h,
          margin: EdgeInsets.symmetric(horizontal: 40.h),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 57.v,
                  width: 60.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      30.h,
                    ),
                    border: Border.all(
                      color: appTheme.black900,
                      width: 2.h,
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage17,
                height: 53.v,
                width: 56.h,
                radius: BorderRadius.circular(
                  26.h,
                ),
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(2.h, 2.v, 2.h, 1.v),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSeventyTwo(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 98.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 48.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 27.h,
            );
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return SeventytwoItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 49.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 13.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return SeventyoneItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyThree(BuildContext context) {
    return SizedBox(
      height: 298.v,
      width: 393.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 58.h,
                top: 8.v,
                right: 58.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 276.h,
                    child: Text(
                      "msg_entiende_tu_mente".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.right,
                      style: CustomTextStyles.titleMediumRobotoBlack900,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 157.h,
                      margin: EdgeInsets.only(right: 16.h),
                      child: Text(
                        "msg_as_somos_los_mejores".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLownavbar,
            height: 185.v,
            width: 393.h,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
