import 'package:nikitchem/presentation/styles/custom_colors.dart';
import 'package:nikitchem/presentation/styles/text_variants.dart';
import 'package:flutter/material.dart';

///
class AppSnackBar {
  ///
  /// show on success case
  ///
  static successSnackBar(BuildContext context,
      {String? contentMessage, bool? showUndo}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: TextVariant(
        data: contentMessage ?? 'Write heere any message',
        color: CustomColors.red,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: CustomColors.lightGrey,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ));
  }

  ///
  /// show to failure case
  ///
  static failureSnackBar(BuildContext context, {String? contentMessage}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: TextVariant(
        data: contentMessage ?? 'Network Error',
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: CustomColors.lightGrey,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      action: SnackBarAction(
        textColor: CustomColors.midBlue,
        label: 'Undo',
        onPressed: () {},
      ),
    ));
  }

  ///
  /// warning  case
  ///
  static warningSnackBar(BuildContext context, {String? contentMessage}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: TextVariant(
        data: contentMessage ?? '',
        color: CustomColors.midBlue,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: CustomColors.lightGrey,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {},
      ),
    ));
  }
}
