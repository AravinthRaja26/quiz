import 'package:nikitchem/data/injection/injector.dart';
import 'package:nikitchem/data/storage/local_storage/local.storage.dart';
import 'package:nikitchem/presentation/ui/views/viewmodel/main/main_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

///
class MainViewModelProvider extends StatelessWidget {
  ///
  /// provider view builder
  ///
  final Widget Function(BuildContext context, Widget? child) builder;

  ///
  final Widget? child;

  ///
  final bool? isComesUserProfile;

  ///
  const MainViewModelProvider(
      {super.key, required this.builder, this.child, this.isComesUserProfile});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainViewModel>(
        builder: builder,
        lazy: false,
        create: (BuildContext context) {
          return MainViewModel(injector<LocalStorage>(),context)
            ..init(isComesUserProfile, context);
        });
  }
}
