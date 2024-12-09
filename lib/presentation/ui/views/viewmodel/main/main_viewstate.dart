//
import 'package:nikitchem/data/abstract/abstract.viewmodel.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'main_viewstate.g.dart';

///
@CopyWith()
class MainViewState extends ViewState {
  ///
  final bool isComesUserProfile;
  final int selectIndex;

  ///
  const MainViewState(
      {required this.isComesUserProfile, required this.selectIndex});

  ///
  MainViewState.initial()
      : isComesUserProfile = false,
        selectIndex = 0;

  @override
  List<Object?> get props => <Object>[isComesUserProfile, selectIndex];
}
