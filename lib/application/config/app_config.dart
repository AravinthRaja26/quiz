///
/// [AppConfiguration]
///
class AppConfiguration {
  ///
  /// Flavor
  ///
  final String flavor;

  ///
  final String baseUrl;

  ///
  final String localUrl;

  ///
  final String appName;

  ///
  final bool isShowBuildDate;

  ///
  final String companyId;

  ///
  final String forceUpdateUrl;

  ///
  const AppConfiguration(
      {required this.flavor,
      required this.baseUrl,
      required this.appName,
      required this.localUrl,
      required this.forceUpdateUrl,
      required this.isShowBuildDate,required this.companyId});
}
