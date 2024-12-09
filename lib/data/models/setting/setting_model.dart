import 'package:nikitchem/data/enum/setting_enum.dart';
import 'package:flutter/cupertino.dart';

///
class SettingModel {
  ///
  final Image? image;

  ///
  final String? title;

  ///
  final SettingsType? settingData;

  ///
  SettingModel({
    this.image,
    this.title,
    this.settingData,
  });
}

///
class TransactionModel {
  ///
  final Image? image;

  ///
  final String? code;

  ///
  final String? date;

  ///
  final String? count;

  ///
  TransactionModel(this.date, this.count, this.image, this.code);
}
