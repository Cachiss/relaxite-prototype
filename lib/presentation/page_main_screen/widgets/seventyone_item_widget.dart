import 'package:flutter/material.dart';
import 'package:marcos_camacho_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SeventyoneItemWidget extends StatelessWidget {
  const SeventyoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.v,
      width: 295.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 7.v,
                right: 16.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "msg_el_poder_del_ahora".tr,
                    style: CustomTextStyles.titleMediumRobotoBlack900,
                  ),
                  SizedBox(height: 16.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 173.h,
                      margin: EdgeInsets.only(right: 2.h),
                      child: Text(
                        "msg_este_libro_explora".tr,
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
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 120.v,
              width: 295.h,
              padding: EdgeInsets.symmetric(
                horizontal: 22.h,
                vertical: 17.v,
              ),
              decoration: AppDecoration.outlineBlack9001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgImage26,
                height: 66.v,
                width: 64.h,
                radius: BorderRadius.circular(
                  10.h,
                ),
                alignment: Alignment.bottomLeft,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
