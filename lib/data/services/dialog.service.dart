import 'package:nikitchem/data/injection/injector.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

///
/// [DialogService]
///
@singleton
class DialogService {
  ///
  /// is loading dialog showing
  ///
  bool isShowing = false;

  ///
  /// Hide Loading Dialog
  ///
  Future<void> hideLoadingDialog(BuildContext context) async {
    if (isShowing) {
      isShowing = false;
      Navigator.of(context).pop();
    }
  }

  ///
  static DialogService injected() {
    return injector<DialogService>();
  }

  ///
  /// Show Loading Dialog
  ///
  Future<void> showLoadingDialog(BuildContext context) async {
    if (!isShowing) {
      isShowing = true;
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return Center(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Theme.of(context).colorScheme.background,
                  ),
                  height: 64,
                  padding: const EdgeInsets.all(16),
                  width: 64,
                  child: CircularProgressIndicator(
                    color: Theme.of(context).colorScheme.primary,
                    backgroundColor: Theme.of(context)
                        .colorScheme
                        .secondary
                        .withOpacity(0.4),
                  )),
            );
          });
    }
  }
}
