import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeRobotoSerifBlack900 =>
      theme.textTheme.bodyLarge!.robotoSerif.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get bodySmallDMSans => theme.textTheme.bodySmall!.dMSans;
  // Headline text style
  static get headlineSmallDMSans =>
      theme.textTheme.headlineSmall!.dMSans.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallRegular => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallRoboto =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        fontWeight: FontWeight.w700,
      );
  // Rochester text style
  static get rochesterBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 96.fSize,
        fontWeight: FontWeight.w400,
      ).rochester;
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 22.fSize,
      );
  static get titleLargeRobotoBlack900 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumDMSansBlack900 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRobotoBlack900 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get rochester {
    return copyWith(
      fontFamily: 'Rochester',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get robotoSerif {
    return copyWith(
      fontFamily: 'Roboto Serif',
    );
  }

  TextStyle get schoolbell {
    return copyWith(
      fontFamily: 'Schoolbell',
    );
  }
}
