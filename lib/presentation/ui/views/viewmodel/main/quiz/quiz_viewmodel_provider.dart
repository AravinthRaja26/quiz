
import 'package:flutter/material.dart';
import 'package:nikitchem/presentation/ui/views/viewmodel/main/quiz/quiz_viewmodel.dart';
import 'package:provider/provider.dart';

///
class QuizViewmodelProvider extends StatelessWidget {
  ///
  /// provider view builder
  ///
  final Widget Function(BuildContext context, Widget? child) builder;

  ///
  final Widget? child;

  ///
  const QuizViewmodelProvider({super.key, required this.builder, this.child});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<QuizViewModel>(
        builder: builder,
        lazy: false,
        child: child,
        create: (BuildContext context) {
          return QuizViewModel()..init();
        });
  }
}