import 'dart:core';

import 'package:nikitchem/data/mixin/serializable.mixin.dart';
import 'package:json_annotation/json_annotation.dart';

part 'local_language.g.dart';

///
@JsonSerializable(fieldRename: FieldRename.snake)
class LanguageResponse with SerializableMixin {
  ///
  @JsonKey(name: 'data')
  final LocalLanguage? language;
  ///
  final String? preferredLanguage;

  ///
  LanguageResponse({this.language,this.preferredLanguage});

  @override
  Map<String, dynamic> toJson() => _$LanguageResponseToJson(this);

  ///
  static LanguageResponse fromJson(Map<String, dynamic> json) =>
      _$LanguageResponseFromJson(json);
}

///
@JsonSerializable(fieldRename: FieldRename.snake)
class LocalLanguage with SerializableMixin {
  ///
  final String? keyHello;

  ///
  final String? keyYourWalletBalance;

  ///
  final String? keyRedeemYourWalletPoints;

  ///
  final String? keyBankTransfer;

  ///
  final String? keyTapHere;
  ///
  final String? keyEnterHere;

  ///
  final String? keyToScan;

  ///
  final String? keyHome;

  ///
  final String? keyTransactions;

  ///
  final String? keySettings;

  ///
  final String? keyProfile;

  ///
  final String? keyWhatsapp;

  ///
  final String? keyNotifications;

  ///
  final String? keyNoNotifications;

  ///
  final String? keyWeWillNotify;

  ///
  final String? keyGoBack;
  final String? keyGoBackHome;

  ///
  final String? keyScanHere;

  ///
  final String? keyEnterCodeManually;

  ///
  final String? keyUpdate;

  ///
  final String? keyEarned;
  final String? keyTransfer;

  ///
  final String? keyRedeemed;

  ///
  final String? keyExpired;

  ///
  final String? keyVerified;
  ///
  final String? keyVerification;

  ///
  final String? keyEarnedQrCodes;

  ///
  final String? keyCouponDetails;

  ///
  final String? keyBasePoints;

  ///
  final String? keyAdditionalPoint;

  ///
  final String? keyPointsEarned;

  ///
  final String? keyScannedDate;

  ///
  final String? keyExpiredDate;

  ///
  final String? keyRedeemedQrCodes;

  ///
  final String? keyExpiredQrCodes;
  ///
  final String? keyTransferQrCodes;

  ///
  final String? keyVerifiedQrCodes;

  ///
  final String? keyNoDataAvailable;

  ///
  final String? keyNotFoundBank;

  ///
  final String? keyYouDontHaveAnyBankAccountDetails;

  ///
  final String? keyTicketDetail;

  ///
  final String? keyCreated;

  ///
  final String? keyTicketDetailSuccessMessage;

  ///
  final String? keyTicketCreateSuccessfully;

  ///
  final String? keyManageBankAccounts;

  ///
  final String? keyLanguageSettings;

  ///
  final String? keyContactUs;

  ///
  final String? keyAboutUs;

  ///
  final String? keyPrivacyPolicy;

  ///
  final String? keyTermsAndConditions;

  ///
  final String? keySupport;

  ///
  final String? keyTicketDetails;

  ///
  final String? keyLogout;

  ///
  final String? keyDelete;

  ///
  final String? keyChangeLanguage;

  ///
  final String? keyAllTickets;

  ///
  final String? keyInProcess;

  ///
  final String? keyOpenTickets;

  ///
  final String? keyResolved;

  ///
  final String? keyCreateTicket;

  ///
  final String? keyActive;

  ///
  final String? keyBranch;

  ///
  final String? keyIfscCode;

  ///
  final String? keyBankName;

  ///
  final String? keyAddBankAccount;

  ///
  final String? keyFillOutDetails;

  ///
  final String? keyMessage;

  ///
  final String? keySend;

  ///
  @JsonKey(name: 'key_tutorial_description_1')
  final String? keyTutorialDescription1;

  ///
  @JsonKey(name: 'key_tutorial_description_2')
  final String? keyTutorialDescription2;

  ///
  final String? keyEnterYourIssueHere;

  ///
  final String? keyEnterYourTicketIssue;

  ///
  final String? keyEnterYourComment;

  ///
  final String? keyUnauthorizedLogin;

  ///
  final String? keyLoggedInAnotherDevice;

  ///
  final String? keyYourLoggedOut;

  ///
  final String? keyTicketNumber;

  ///
  final String? keyTicketStatus;

  ///
  final String? keyDetails;

  ///
  final String? keyResolvedOn;

  ///
  final String? keyCreatedOn;

  ///
  final String? keyTicketTitle;

  ///
  final String? keyOtherIssue;

  ///
  final String? keyQrCode;

  ///
  final String? keyOpen;

  ///
  final String? keySuccess;

  ///
  final String? keyRedeemedOn;

  ///
  final String? keyUserProfile;

  ///
  final String? keyKnowYourBetter;

  ///
  final String? keyMandatoryHelpText;

  ///
  final String? keyEmailId;

  ///
  final String? keyGetRewarded;

  ///
  final String? keySkip;

  ///
  final String? keyCreate;

  ///
  final String? keyMailSent;

  ///
  final String? keyScanAgin;

  ///
  final String? keyEnterCouponCode;

  ///
  final String? keyEmailSent;

  ///
  final String? keyRedeem;

  ///
  final String? keyRateUs;

  ///
  final String? keyLetsGo;

  ///
  final String? keyCancel;

  ///
  @JsonKey(name: 'key_welocme_Litaski')
  final String? keyWelcomeLitaski;

  ///
  final String? keyYes;

  ///
  final String? keyNo;

  ///
  final String? keyOk;
  final String? keyToTransferTheAmount;

  ///
  final String? keyAddBankName;

  ///
  final String? keyConfirm;

  ///
  final String? keyTransferAmountWalletMessage;

  ///
  final String? keyTransactionValueMinimum;

  ///
  final String? keyGetOtp;

  ///
  final String? keyCompleteYourKyc;

  ///
  final String? keySent;

  ///
  final String? keyOtpVerification;
  final String? keyYourRedemptionExceeds;

  ///
  final String? keyOtpSent;

  ///
  final String? keyValidate;

  ///
  final String? keyGetIt;

  ///
  final String? keyGetYouStarted;

  ///
  final String? keyChooseLanguage;

  ///
  final String? keyResendCode;

  ///
  final String? keyVisitOurWebsite;

  ///
  final String? keyPts;

  ///
  final String? keyProceedToChat;

  ///
  final String? keyUserName;

  ///
  final String? keyAccNo;

  ///
  final String? keyBranchName;

  ///
  final String? keyAccountNumber;

  ///
  final String? keyAccountHolderName;

  ///
  final String? keyAccountNo;

  ///
  final String? keyReenterAccountNo;

  ///
  final String? keyYouWantLogout;

  ///
  final String? keyYouWantDeleteAccount;

  ///
  final String? keyGoToHome;

  ///
  final String? keyAdd;

  ///
  final String? keyYourCouponCode;

  ///
  final String? keyPerformScanOperation;

  ///
  final String? keyPerformBankTransferOperation;

  ///
  final String? keyGoToSettings;

  ///
  final String? keyAboutLitaski;

  ///
  final String? keyAboutTheApp;

  ///
  final String? keySampymsf;

  ///
  final String? keyEnterCouponCodeManually;

  ///
  final String? keyProceed;

  ///
  final String? keyVerify;

  ///
  final String? keyLogin;

  ///
  final String? keySuccessful;

  ///
  final String? keyCongratulations;

  ///
  final String? keyFailure;

  ///
  final String? keyTryAgain;

  ///
  final String? keyYouAreOffline;

  ///
  final String? keyNotFound;

  ///
  final String? keyReload;

  ///
  final String? keyAllow;

  ///
  final String? keySelectPayee;

  ///
  final String? keyTransferAmount;

  ///
  final String? keyRemarks;

  ///
  final String? keyEnterVerificationOtp;
  final String? keyEnterYourMPin;

  ///
  final String? keyEnterBankAccToRedeemYourPoints;

  ///
  final String? keyYourCouponPoints;

  ///
  final String? keyYourNoConnectedInInternet;

  ///
  final String? keyUnableToScan;

  ///
  final String? keyBankAccountAdded;

  ///
  final String? keyBankAccountRemoved;

  ///
  final String? keyDontHaveBankAccount;

  ///
  final String? keyYourTicketCreated;

  ///
  final String? keyUnableToProcess;

  ///
  final String? keyWalletPointTransfer;

  ///
  final String? keyProvideCameraAccess;

  ///
  final String? keyEnterMobileNumber;

  ///
  final String? keyEarnRedeemNow;

  ///
  final String? keyExpireOn;

  ///
  final String? keyExternalApp;

  ///
  final String? keyNetwork;

  ///
  final String? keyCheckYourNetwork;

  ///
  final String? keyScanQrCode;

  ///
  final String? keyOr;

  ///
  final String? keyLitaskiTerms;

  ///
  final String? keyInprogress;

  ///
  final String? keyClosed;

  ///
  final String? keyCancelLogin;

  ///
  final String? keyNoBankDetailFound;

  ///
  final String? keyInvalidPhoneNumber;

  ///
  final String? keyInvalidCouponNumber;

  ///
  final String? keyPhoneNumber;

  ///
  final String? keyHowCanWeHelp;

  ///
  final String? keyDisabledLocation;

  ///
  final String? keyKycWarningDialog;
  ///
  final String? keyUpdateFile;
  ///
  final String? keyOpenCamera;
  ///
  final String? keyStatementAlert;
  ///
  final String? keyPassbook;
  ///
  final String? keyTransffer;
  ///
  final String? keyPointTransfer;
  ///
  final String? keyKycBenefits;
  ///
  final String? keyNote;
  ///
  final String? keyPointsTranfer;
  ///
  final String? keyMobileNumberDealer;
  ///
  final String? keyStatus;
  ///
  final String? keyValidPanNumber;
  ///
  final String? keySelectState;
  ///
  final String? keySelectCity;
  ///
    final String? keyEnterTheAddress;
  ///
  final String? keyChooseTheDocument;
  ///
  final String? keyValidPincode;
  ///
  final String? keyState;
  ///
  final String? keyCity;
  ///
  final String? keyArea;
  ///
  final String? keyAddress_1;
  ///
  final String? keyAddress_2;
  ///
  final String? keyPincode;
  ///
  final String? keyPanNumber;
  ///
  final String? keyPersonalDetails;
  ///
  final String? keyAddress;
  ///
  final String? keyAppPermission;

  ///
  final String? keyMessageNotEmpty;

  ///
  final String? keyAlreadyCouponScanned;

  ///
  final String? keyAppVersion;

  ///
  final String? keyWhatsappNotInstalled;

  ///
  final String? keyLocationServiceDisabled;

  ///
  final String? keyPermissionAreDenied;

  ///
  final String? keyPermissionAreNotPermission;

  ///
  final String? keyDisabledCamera;

  ///
  final String? keyLoginSuccess;

  ///
  final String? keyValidPhoneNumber;

  ///
  final String? keyValidOtp;

  ///
  final String? keyValidUsername;

  ///
  final String? keyValidPlaceholder;

  ///
  final String? keyValidAccountNumber;

  ///
  final String? keyNotMatchingAccountNumber;

  ///.
  final String? keyEnterIfscCode;

  ///
  final String? keyValidIfscCode;

  ///
  final String? keyValidBankName;

  ///
  final String? keyComment;

  ///
  final String? keyValidBranchName;

  ///
  final String? keyAddedIntoYourWalletSuccessfully;

  ///
  final String? keyLitaski;

  ///
  final String? keyTheBestModularSwitchFromLitaski;

  ///
  final String? keyThroughBankTransferGiftCards;

  ///

  final String? keyAccountDetailsPleaseAddIt;
  ///
  final String? keyNoteOfCountryCode;

  ///
  final String? keyAppUpdate;

  ///
  final String? keyRedeemYourPoints;

  ///
  final String? keyPleaseConnectAndTryAgain;

  ///
  final String? keyWelcome;

  ///
  @JsonKey(name: 'key_settings_Ticket_Details')
  final String? keySettingsTicketDetails;

  ///
  final String? keyCheckTheTicketDetailsFrom;

  ///
  final String? keyEnterYourCommentHere;

  ///
  final String? keyOtp;

  ///
  final String? keyNoNetworkFound;

  ///
  final String? keyNoResponse;

  ///
  final String? keyNetworkConnections;

  ///
  final String? keyTryAfterSometime;

  ///
  final String? keyUpdateTheApp;

  ///
  final String? keyYourNetwork;

  ///
  final String? keyAccountNumberAlreadyExist;

  ///
  final String? keyYouHaveDisabledLocationAccessEarlier;

  ///
  final String? keyBankTransferSubmitted;

  ///
  final String? keyPhoneNumberIsAlreadyRegistered;
  final String? keyUserInactiveReActive;

  ///
  final String? appPermission;

  ///
  final String? keyMessageMustShouldNotBeEmpty;

  ///
  final String? keyYouAreLoggedOut;

  ///
  final String? keyInvalidCouponCode;

  ///
  final String? keyExpiredCouponCode;

  ///
  final String? keyRetry;

  ///
  final String? keyYouAreLoggedInAnotherDevice;

  ///
  final String? keyOtpIsWrong;

  ///
  final String? keyReActive;
  ///
  final String? keyResetMpin;
  ///
  final String? keySubmit;

  ///
  final String? keyValidCoupon;

  ///
  final String? keyPleaseEnterMinimumEightCharacters;

  ///
  final String? keyPleaseEnterMaximumSixCharacters;

  ///
  final String? keyLocationPermissionQrAction;

  ///
  final String? keyLitaskiTeamWillGetBackToYouSoon;

  ///
  final String? keyLooksLikeYouDontHaveAnyBankAccountAdded;

  ///
  final String? keyRemoteConfigUpdateContent;

  ///
  final String? nepalOtpVerificationErrorMessage;

  ///
  final String? keyScanNew;

  ///

  ///
  LocalLanguage( {
    this.keyUpdateFile,
    this.keyScanNew,
    this.keyResetMpin, this.keySubmit,
    this.keyOpenCamera,
    this.keyEnterYourMPin,
    this.keyEnterHere,
    this.keySelectState,
    this.keySelectCity,
    this.keyValidPincode,
    this.keyEnterTheAddress,
    this.keyChooseTheDocument,
    this.keyUserInactiveReActive,
    this.keyToTransferTheAmount,
    this.keyNoteOfCountryCode,
    this.keyStatementAlert,
    this.keyPassbook,
    this.keyTransffer,
    this.keyTransfer,
    this.keyPointTransfer,
    this.keyKycBenefits,
    this.keyNote,
    this.keyPointsTranfer,
    this.keyMobileNumberDealer,
    this.keyYourRedemptionExceeds,
    this.keyStatus,
    this.keyState,
    this.keyCity,
    this.keyArea,
    this.keyAddress_1,
    this.keyAddress_2,
    this.keyPincode,
    this.keyPanNumber,
    this.keyPersonalDetails,
    this.keyAddress,
    this.keyInvalidCouponNumber,
    this.keyVerify,
    this.keyRemoteConfigUpdateContent,
    this.keyLooksLikeYouDontHaveAnyBankAccountAdded,
    this.keyPleaseEnterMaximumSixCharacters,
    this.keyLitaskiTeamWillGetBackToYouSoon,
    this.keyPleaseEnterMinimumEightCharacters,
    this.keyLocationPermissionQrAction,
    this.keyValidCoupon,
    this.keyKycWarningDialog,
    this.keyCompleteYourKyc,
    this.keyReActive,
    this.keyYouAreLoggedInAnotherDevice,
    this.keyRetry,
    this.keyNoNetworkFound,
    this.keyTransferQrCodes,
    this.keyValidPanNumber,
    this.keyNoResponse,
    this.keyNetworkConnections,
    this.keyTryAfterSometime,
    this.keyUpdateTheApp,
    this.keyYourNetwork,
    this.keyAccountNumberAlreadyExist,
    this.keyYouHaveDisabledLocationAccessEarlier,
    this.keyBankTransferSubmitted,
    this.keyPhoneNumberIsAlreadyRegistered,
    this.appPermission,
    this.keyMessageMustShouldNotBeEmpty,
    this.keyYouAreLoggedOut,
    this.keyInvalidCouponCode,
    this.keyExpiredCouponCode,
    this.keyTicketDetail,
    this.keyNotFoundBank,
    this.keyYouDontHaveAnyBankAccountDetails,
    this.keyInProcess,
    this.keyCreated,
    this.keyTicketDetailSuccessMessage,
    this.keyAddBankName,
    this.keyTicketCreateSuccessfully,
    this.keyAccountNumber,
    this.keyOtp,
    this.keyTransferAmountWalletMessage,
    this.keyTransactionValueMinimum,
    this.keyHello,
    this.keyWelcome,
    this.keyEnterYourCommentHere,
    this.keyPhoneNumber,
    this.keyHowCanWeHelp,
    this.keyYourWalletBalance,
    this.keyRedeemYourWalletPoints,
    this.keyBankTransfer,
    this.keyTapHere,
    this.keyToScan,
    this.keyHome,
    this.keyTransactions,
    this.keySettings,
    this.keyProfile,
    this.keyWhatsapp,
    this.keyVerification,
    this.keyNotifications,
    this.keyNoNotifications,
    this.keyWeWillNotify,
    this.keyGoBack,
    this.keyScanHere,
    this.keyEnterCodeManually,
    this.keyUpdate,
    this.keyEarned,
    this.keyRedeemed,
    this.keyExpired,
    this.keyVerified,
    this.keyEarnedQrCodes,
    this.keyCouponDetails,
    this.keyBasePoints,
    this.keyAdditionalPoint,
    this.keyPointsEarned,
    this.keyScannedDate,
    this.keyExpiredDate,
    this.keyRedeemedQrCodes,
    this.keyExpiredQrCodes,
    this.keyVerifiedQrCodes,
    this.keyOtpIsWrong,
    this.keyNoDataAvailable,
    this.keyManageBankAccounts,
    this.keyLanguageSettings,
    this.keyContactUs,
    this.keyAboutUs,
    this.keyPrivacyPolicy,
    this.keyTermsAndConditions,
    this.keySupport,
    this.keyTicketDetails,
    this.keyLogout,
    this.keyDelete,
    this.keyChangeLanguage,
    this.keyAllTickets,
    this.keyOpenTickets,
    this.keyResolved,
    this.keyCreateTicket,
    this.keyActive,
    this.keyBranch,
    this.keyIfscCode,
    this.keyBankName,
    this.keyAddBankAccount,
    this.keyFillOutDetails,
    this.keyMessage,
    this.keySend,
    this.keyTutorialDescription1,
    this.keyTutorialDescription2,
    this.keyEnterYourIssueHere,
    this.keyEnterYourTicketIssue,
    this.keyEnterYourComment,
    this.keyUnauthorizedLogin,
    this.keyLoggedInAnotherDevice,
    this.keyYourLoggedOut,
    this.keyTicketNumber,
    this.keyTicketStatus,
    this.keyDetails,
    this.keyResolvedOn,
    this.keyCreatedOn,
    this.keyTicketTitle,
    this.keyOtherIssue,
    this.keyQrCode,
    this.keyOpen,
    this.keySuccess,
    this.keyRedeemedOn,
    this.keyUserProfile,
    this.keyKnowYourBetter,
    this.keyMandatoryHelpText,
    this.keyEmailId,
    this.keyGetRewarded,
    this.keySkip,
    this.keyCreate,
    this.keyMailSent,
    this.keyScanAgin,
    this.keyEnterCouponCode,
    this.keyEmailSent,
    this.keyRedeem,
    this.keyRateUs,
    this.keyLetsGo,
    this.keyCancel,
    this.keyWelcomeLitaski,
    this.keyYes,
    this.keyNo,
    this.keyOk,
    this.keyConfirm,
    this.keyGetOtp,
    this.keySent,
    this.keyOtpVerification,
    this.keyOtpSent,
    this.keyValidate,
    this.keyGetIt,
    this.keyGetYouStarted,
    this.keyChooseLanguage,
    this.keyResendCode,
    this.keyVisitOurWebsite,
    this.keyPts,
    this.keyProceedToChat,
    this.keyUserName,
    this.keyAccNo,
    this.keyBranchName,
    this.keyAccountHolderName,
    this.keyAccountNo,
    this.keyReenterAccountNo,
    this.keyYouWantLogout,
    this.keyYouWantDeleteAccount,
    this.keyGoToHome,
    this.keyAdd,
    this.keyYourCouponCode,
    this.keyPerformScanOperation,
    this.keyPerformBankTransferOperation,
    this.keyGoToSettings,
    this.keyAboutLitaski,
    this.keyAboutTheApp,
    this.keySampymsf,
    this.keyEnterCouponCodeManually,
    this.keyProceed,
    this.keyLogin,
    this.keySuccessful,
    this.keyCongratulations,
    this.keyFailure,
    this.keyTryAgain,
    this.keyYouAreOffline,
    this.keyNotFound,
    this.keyReload,
    this.keyAllow,
    this.keySelectPayee,
    this.keyTransferAmount,
    this.keyRemarks,
    this.keyEnterVerificationOtp,
    this.keyEnterBankAccToRedeemYourPoints,
    this.keyYourCouponPoints,
    this.keyYourNoConnectedInInternet,
    this.keyUnableToScan,
    this.keyBankAccountAdded,
    this.keyBankAccountRemoved,
    this.keyDontHaveBankAccount,
    this.keyYourTicketCreated,
    this.keyUnableToProcess,
    this.keyWalletPointTransfer,
    this.keyProvideCameraAccess,
    this.keyEnterMobileNumber,
    this.keyEarnRedeemNow,
    this.keyExpireOn,
    this.keyExternalApp,
    this.keyNetwork,
    this.keyCheckYourNetwork,
    this.keyScanQrCode,
    this.keyOr,
    this.keyLitaskiTerms,
    this.keyInprogress,
    this.keyClosed,
    this.keyCancelLogin,
    this.keyNoBankDetailFound,
    this.keyInvalidPhoneNumber,
    this.keyDisabledLocation,
    this.keyAppPermission,
    this.keyMessageNotEmpty,
    this.keyAlreadyCouponScanned,
    this.keyAppVersion,
    this.keyWhatsappNotInstalled,
    this.keyLocationServiceDisabled,
    this.keyPermissionAreDenied,
    this.keyPermissionAreNotPermission,
    this.keyDisabledCamera,
    this.keyAddedIntoYourWalletSuccessfully,
    this.keyLoginSuccess,
    this.keyValidPhoneNumber,
    this.keyValidOtp,
    this.keyValidUsername,
    this.keyValidPlaceholder,
    this.keyValidAccountNumber,
    this.keyNotMatchingAccountNumber,
    this.keyEnterIfscCode,
    this.keyValidIfscCode,
    this.keyValidBankName,
    this.keyComment,
    this.keyValidBranchName,
    this.keyLitaski,
    this.keyTheBestModularSwitchFromLitaski,
    this.keyThroughBankTransferGiftCards,
    this.keyAccountDetailsPleaseAddIt,
    this.keyAppUpdate,
    this.keyRedeemYourPoints,
    this.keyPleaseConnectAndTryAgain,
    this.keySettingsTicketDetails,
    this.keyCheckTheTicketDetailsFrom,
    this.keyGoBackHome,
    this.nepalOtpVerificationErrorMessage,
  });



  @override
  Map<String, dynamic> toJson() => _$LocalLanguageToJson(this);

  ///
  static LocalLanguage fromJson(Map<String, dynamic> json) =>
      _$LocalLanguageFromJson(json);
}
