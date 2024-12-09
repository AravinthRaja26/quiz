// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:nikitchem/presentation/ui/views/screens/main/index.dart' as _i1;
import 'package:nikitchem/presentation/ui/views/screens/main/quiz/quiz_screen.dart'
    as _i2;

/// generated route for
/// [_i1.MainScreen]
class MainScreen extends _i3.PageRouteInfo<MainScreenArgs> {
  MainScreen({
    _i4.Key? key,
    bool? comesToUserProfile,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          MainScreen.name,
          args: MainScreenArgs(
            key: key,
            comesToUserProfile: comesToUserProfile,
          ),
          initialChildren: children,
        );

  static const String name = 'MainScreen';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<MainScreenArgs>(orElse: () => const MainScreenArgs());
      return _i1.MainScreen(
        key: args.key,
        comesToUserProfile: args.comesToUserProfile,
      );
    },
  );
}

class MainScreenArgs {
  const MainScreenArgs({
    this.key,
    this.comesToUserProfile,
  });

  final _i4.Key? key;

  final bool? comesToUserProfile;

  @override
  String toString() {
    return 'MainScreenArgs{key: $key, comesToUserProfile: $comesToUserProfile}';
  }
}

/// generated route for
/// [_i2.QuizScreen]
class QuizScreen extends _i3.PageRouteInfo<void> {
  const QuizScreen({List<_i3.PageRouteInfo>? children})
      : super(
          QuizScreen.name,
          initialChildren: children,
        );

  static const String name = 'QuizScreen';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.QuizScreen();
    },
  );
}
