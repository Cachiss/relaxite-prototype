import 'package:flutter/material.dart';
import 'package:marcos_camacho_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class SeventytwoItemWidget extends StatelessWidget {
  const SeventytwoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 67.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              CustomImageView(
                imagePath: ImageConstant.imgImage11,
                height: 66.adaptSize,
                width: 66.adaptSize,
                radius: BorderRadius.circular(
                  20.h,
                ),
                margin: EdgeInsets.only(left: 1.h),
              ),
              SizedBox(height: 2.v),
              Container(
                width: 40.h,
                margin: EdgeInsets.only(left: 12.h),
                child: Text(
                  "lbl_cristian_cruz".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
