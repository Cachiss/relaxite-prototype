import 'package:flutter/material.dart';
import 'package:marcos_camacho_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class TestimoniosItemWidget extends StatelessWidget {
  const TestimoniosItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Row(
        children: [
          Container(
            height: 70.adaptSize,
            width: 70.adaptSize,
            margin: EdgeInsets.only(top: 1.v),
            decoration: AppDecoration.outlineBlack9002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage12,
              height: 66.adaptSize,
              width: 66.adaptSize,
              radius: BorderRadius.circular(
                20.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              bottom: 14.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_ronaldo_ram_rez".tr,
                  style: CustomTextStyles.titleMediumDMSansBlack900,
                ),
                SizedBox(height: 1.v),
                Container(
                  width: 128.h,
                  margin: EdgeInsets.only(left: 5.h),
                  child: Text(
                    "msg_el_d_a_de_hoy_me".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodySmallDMSans,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUnion,
            height: 33.adaptSize,
            width: 33.adaptSize,
            margin: EdgeInsets.only(
              left: 6.h,
              top: 19.v,
              bottom: 18.v,
            ),
          ),
        ],
      ),
    );
  }
}
