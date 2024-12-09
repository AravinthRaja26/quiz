// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_viewstate.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MainViewStateCWProxy {
  MainViewState isComesUserProfile(bool isComesUserProfile);

  MainViewState selectIndex(int selectIndex);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MainViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MainViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  MainViewState call({
    bool? isComesUserProfile,
    int? selectIndex,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMainViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMainViewState.copyWith.fieldName(...)`
class _$MainViewStateCWProxyImpl implements _$MainViewStateCWProxy {
  const _$MainViewStateCWProxyImpl(this._value);

  final MainViewState _value;

  @override
  MainViewState isComesUserProfile(bool isComesUserProfile) =>
      this(isComesUserProfile: isComesUserProfile);

  @override
  MainViewState selectIndex(int selectIndex) => this(selectIndex: selectIndex);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MainViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MainViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  MainViewState call({
    Object? isComesUserProfile = const $CopyWithPlaceholder(),
    Object? selectIndex = const $CopyWithPlaceholder(),
  }) {
    return MainViewState(
      isComesUserProfile: isComesUserProfile == const $CopyWithPlaceholder() ||
              isComesUserProfile == null
          ? _value.isComesUserProfile
          // ignore: cast_nullable_to_non_nullable
          : isComesUserProfile as bool,
      selectIndex:
          selectIndex == const $CopyWithPlaceholder() || selectIndex == null
              ? _value.selectIndex
              // ignore: cast_nullable_to_non_nullable
              : selectIndex as int,
    );
  }
}

extension $MainViewStateCopyWith on MainViewState {
  /// Returns a callable class that can be used as follows: `instanceOfMainViewState.copyWith(...)` or like so:`instanceOfMainViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MainViewStateCWProxy get copyWith => _$MainViewStateCWProxyImpl(this);
}
