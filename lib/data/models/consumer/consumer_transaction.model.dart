import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';
part 'consumer_transaction.model.g.dart';

///
@JsonSerializable()
class ConsumerTransactionResponse with SerializableMixin {
  ///
  final ConsumerTransactionData? data;

  ///
  final String? status;

  ///
  ConsumerTransactionResponse({this.data, this.status});
  @override
  Map<String, dynamic> toJson() => _$ConsumerTransactionResponseToJson(this);

  ///
  static ConsumerTransactionResponse fromJson(Map<String, dynamic> json) =>
      _$ConsumerTransactionResponseFromJson(json);
}

///
@JsonSerializable()
class ConsumerTransactionData with SerializableMixin {
  ///
  List<Earned>? earned;

  ///
  List<Referral>? referral;

  ///
  List<Expired>? expired;

  ///
  List<Redeemed>? redeemed;

  ///
  List<Verified>? verified;

  ///
  @JsonKey(name: 'error_message')
  String? errorMessage;

  ///
  ConsumerTransactionData(
    this.earned,
    this.referral,
    this.expired,
    this.redeemed,
    this.verified,
  );
  @override
  Map<String, dynamic> toJson() => _$ConsumerTransactionDataToJson(this);

  ///
  static ConsumerTransactionData fromJson(Map<String, dynamic> json) =>
      _$ConsumerTransactionDataFromJson(json);
}

///
@JsonSerializable()
class Earned with SerializableMixin {
  ///
  String? timeStamp;

  ///
  double? amount;

  ///
  String? coupenCode;

  ///
  String? couponType;

  ///
  String? expiredDate;

  ///
  @JsonKey(name: 'type_desc')
  String? typeDesc;

  ///
  String? transactionTime;

  ///
  bool? isExpired;

  ///
  Earned(
    this.timeStamp,
    this.amount,
    this.coupenCode,
    this.couponType,
    this.expiredDate,
    this.typeDesc,
    this.transactionTime,
    this.isExpired,
  );
  @override
  Map<String, dynamic> toJson() => _$EarnedToJson(this);

  ///
  static Earned fromJson(Map<String, dynamic> json) => _$EarnedFromJson(json);
}

///
@JsonSerializable()
class Referral with SerializableMixin {
  ///
  Referral();
  @override
  Map<String, dynamic> toJson() => _$ReferralToJson(this);

  ///
  static Referral fromJson(Map<String, dynamic> json) =>
      _$ReferralFromJson(json);
}

///
@JsonSerializable()
class Expired with SerializableMixin {
  ///
  double expireAmount;

  ///
  String expiryDate;

  ///
  String timeStamp;

  ///
  String accrualDate;

  ///
  double amount;

  ///
  String coupenCode;

  ///
  String companyName;

  ///
  @JsonKey(name: 'type_desc')
  String typeDesc;

  ///
  Expired(
    this.expireAmount,
    this.expiryDate,
    this.timeStamp,
    this.accrualDate,
    this.amount,
    this.coupenCode,
    this.companyName,
    this.typeDesc,
  );
  @override
  Map<String, dynamic> toJson() => _$ExpiredToJson(this);

  ///
  static Expired fromJson(Map<String, dynamic> json) => _$ExpiredFromJson(json);
}

///
@JsonSerializable()
class Redeemed with SerializableMixin {
  ///
  String? timeStamp;

  ///
  String? transactionType;

  ///
  double? amount;

  ///
  String? createdDate;

  ///
  String? transactionStatus;

  ///
  String? accNo;

  ///
  String? benificiaryName;
  ///
  String? uniqueRefNum;

  ///
  dynamic reason;

  ///
  @JsonKey(name: 'type_desc')
  String? typeDesc;

  ///
  String? paymentRef;

  ///
  Redeemed(
    this.timeStamp,
    this.transactionType,
    this.amount,
    this.createdDate,
    this.transactionStatus,
    this.accNo,
    this.benificiaryName,
    this.uniqueRefNum,
    this.reason,
    this.typeDesc,
    this.paymentRef,
  );
  @override
  Map<String, dynamic> toJson() => _$RedeemedToJson(this);

  ///
  static Redeemed fromJson(Map<String, dynamic> json) =>
      _$RedeemedFromJson(json);
}

///
@JsonSerializable()
class Verified with SerializableMixin {
  ///
  String? scannedDate;

  ///
  String? couponCode;

  ///

  ///
  Verified(this.couponCode, this.scannedDate);
  @override
  Map<String, dynamic> toJson() => _$VerifiedToJson(this);

  ///
  static Verified fromJson(Map<String, dynamic> json) =>
      _$VerifiedFromJson(json);
}
