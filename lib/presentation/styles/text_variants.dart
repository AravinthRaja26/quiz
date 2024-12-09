import 'dart:math';

import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/storage/local_storage/local.storage.dart';
import 'package:nikitchem/presentation/styles/custom_colors.dart';
import 'package:nikitchem/presentation/ui/utils/storage.keys.dart';
import 'package:flutter/material.dart';



///
class TextVariant extends StatelessWidget {
  ///
  final String data;

  ///
  final TextVariantType variantType;

  ///
  final Color? color;

  ///
  final FontWeight? fontWeight;

  ///
  final int? maxLines;

  ///
  final TextOverflow? overflow;

  ///
  final TextAlign? textAlign;

  ///
  final String? fontFamily;

  ///
  final double? fontSize;

  ///
  const TextVariant(
      {Key? key,
      required this.data,
      this.maxLines,
      this.variantType = TextVariantType.bodyMedium,
      this.fontWeight,
      this.overflow,
      this.color,
      this.textAlign,
      this.fontFamily,
      this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(data,
        style: getTextStyle(context),
        textAlign: textAlign,
        textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
        maxLines: maxLines,
        overflow: overflow);
  }

  ///
  TextStyle getTextStyle(BuildContext context) {

    ///
    LocalStorage localStorage = injector<LocalStorage>();

    ///
    String tamilFontSize =
        localStorage.retrieveString(StorageKey.selectLanguage) ?? 'en';
    TextStyle textStyle;
    TextTheme textTheme = Theme.of(context).textTheme;
    switch (variantType) {
      case TextVariantType.bodyLarge:
        textStyle = tamilFontSize == 'ta'
            ? textTheme.bodyLarge!.copyWith(fontSize: 16.0)
            : textTheme.bodyLarge!;
        break;
      case TextVariantType.bodyMedium:
        textStyle = tamilFontSize == 'ta'
            ? textTheme.bodyMedium!.copyWith(fontSize: 14.0)
            : textTheme.bodyMedium!;
        break;
      case TextVariantType.bodySmall:
        textStyle = tamilFontSize == 'ta'
            ? textTheme.bodySmall!.copyWith(fontSize: 12.0)
            : textTheme.bodySmall!;
        break;
      case TextVariantType.labelLarge:
        textStyle = tamilFontSize == 'ta'
            ? textTheme.labelLarge!.copyWith(fontSize: 12.0)
            : textTheme.labelLarge!;
        break;
      case TextVariantType.labelMedium:
        textStyle = tamilFontSize == 'ta'
            ? textTheme.labelMedium!.copyWith(fontSize: 10.55)
            : textTheme.labelMedium!;
        textStyle = textTheme.labelMedium!;
        break;
      case TextVariantType.labelSmall:
        textStyle = tamilFontSize == 'ta'
            ? textTheme.labelSmall!.copyWith(fontSize: 8.0)
            : textTheme.labelSmall!;
        break;
      case TextVariantType.titleLarge:
        textStyle = tamilFontSize == 'ta'
            ? textTheme.titleLarge!.copyWith(fontSize: 15.0)
            : textTheme.titleLarge!;
        break;
      case TextVariantType.titleMedium:
        textStyle = tamilFontSize == 'ta'
            ? textTheme.titleMedium!.copyWith(fontSize: 15.0)
            : textTheme.titleMedium!;
        break;
      case TextVariantType.titleSmall:
        textStyle = tamilFontSize == 'ta'
            ? textTheme.titleSmall!.copyWith(fontSize: 13.0)
            : textTheme.titleSmall!;
        break;
      case TextVariantType.headlineLarge:
        textStyle = tamilFontSize == 'ta'
            ? textTheme.headlineLarge!.copyWith(fontSize: 18.0)
            : textTheme.headlineLarge!;
        break;
      case TextVariantType.headlineMedium:
        textStyle = tamilFontSize == 'ta'
            ? textTheme.headlineMedium!.copyWith(fontSize: 19.0)
            : textTheme.headlineMedium!;
        break;
      case TextVariantType.headlineSmall:
        textStyle = tamilFontSize == 'ta'
            ? textTheme.headlineSmall!.copyWith(fontSize: 16.0)
            : textTheme.headlineSmall!;
        break;
      case TextVariantType.displayLarge:
        textStyle = tamilFontSize == 'ta'
            ? textTheme.displayLarge!.copyWith(fontSize: 30.0)
            : textTheme.displayLarge!;
        break;
      case TextVariantType.displayMedium:
        textStyle = tamilFontSize == 'ta'
            ? textTheme.displayMedium!.copyWith(fontSize: 26.0)
            : textTheme.displayMedium!;
        break;
      case TextVariantType.displaySmall:
        textStyle = tamilFontSize == 'ta'
            ? textTheme.displaySmall!.copyWith(fontSize: 22.0)
            : textTheme.displaySmall!;
        break;
      default:
        textStyle = tamilFontSize == 'ta'
            ? textTheme.bodyMedium!.copyWith(fontSize: 14.0)
            : textTheme.bodyMedium!;
        break;
    }
    if (color != null) {
      textStyle = textStyle.copyWith(color: color);
    }else{
      textStyle = textStyle.copyWith(color: CustomColors.purpleBrown);
    }
    if (fontWeight != null) {
      textStyle = textStyle.copyWith(fontWeight: fontWeight);
    }
    if (fontFamily != null) {
      textStyle = textStyle.copyWith(fontFamily: fontFamily);
    }
    if (fontSize != null) {
      textStyle = textStyle.copyWith(fontSize: fontSize);
    }

    return textStyle;
  }
}

///
enum TextVariantType {
  ///
  bodyLarge,

  ///
  bodyMedium,

  ///
  bodySmall,

  ///
  labelLarge,

  ///
  labelMedium,

  ///
  labelSmall,

  ///
  titleLarge,

  ///
  titleMedium,

  ///
  titleSmall,

  ///
  headlineLarge,

  ///
  headlineMedium,

  ///
  headlineSmall,

  ///
  displayLarge,

  ///
  displayMedium,

  ///
  displaySmall
}

///
class ScaleSize {
  ///
  static double textScaleFactor(BuildContext context, {double maxTextScaleFactor = 2}) {
    final double width = MediaQuery.of(context).size.width;
    double val = (width / 1400) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}