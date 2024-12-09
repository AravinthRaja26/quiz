import 'package:auto_route/auto_route.dart';
import 'package:nikitchem/infrastructure/globle.dart';
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
        color: CustomColors.midBlue,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: CustomColors.lightGrey,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      action: SnackBarAction(
        textColor: CustomColors.red,
        label: 'OK',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    ));
  }

  ///
  /// show to failure case
  ///
  ///
  /// show to failure case
  ///
  static Future<void> failureSnackBar(BuildContext context,
      {String? contentMessage,
      String? label,
      VoidCallback? onPressed,
      VoidCallback? onClosed}) async {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(
          content: TextVariant(
            data: contentMessage ?? 'Network Error',
            color: CustomColors.red,
            fontWeight: FontWeight.bold,
          ),
          duration: const Duration(seconds: 5),
          backgroundColor: CustomColors.lightGrey,
          behavior: SnackBarBehavior.floating,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          action: SnackBarAction(
            textColor: CustomColors.midBlue,
            label: label ?? localLanguage?.keyOk ?? 'Ok',
            onPressed: onPressed ??
                () {
                  AutoRouter.of(context).maybePop();
                },
          ),
        ))
        .closed
        .then((SnackBarClosedReason value) {
      if (onClosed != null) {
        onClosed();
      }
    });
  }

  ///
  /// warning  case
  ///
  static warningSnackBar(BuildContext context, {String? contentMessage}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: TextVariant(
        data: contentMessage ?? '',
        color: CustomColors.warning,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: CustomColors.lightGrey,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    ));
  }
}
