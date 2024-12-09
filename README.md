# nikitchem

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
 // use this color
 # ColorScheme colorScheme = Theme.of(context).colorScheme;

 // generate localization code
 # flutter pub run easy_localization:generate --output-dir=lib/application/localizations --output-file=localizations.g.dart --format=json --source-dir=assets/translations
 # flutter pub run easy_localization:generate -f keys --output-dir=lib/application/localizations --output-file=locale_keys.g.dart --source-dir=assets/translations

// Apk run in release mode
 # flutter run apk --flavor dev -t lib/application/main/main.dev.dart --release

 //Supports version : 
 # This project supports only >= 3.10 flutter version


// build app bundle

# flutter build appbundle --flavor=prod -t lib/application/main/main.prod.dart --release
# flutter build ipa --flavor=prod -t lib/application/main/main.prod.dart --export-method=ad-hoc
# flutter build ipa --flavor=dev -t lib/application/main/main.dev.dart --export-method=ad-hoc

// firebase config with flavour
#  flutterfire configure --project=as-auto-products --out=lib\application\ --platforms="ios,android" --ios-bundle-id="com.example.as_auto_products.dev" --android-package-name="com.example.as_auto_products"



/// Thin, the least thick
static const FontWeight w100 = FontWeight._(0, 100);

/// Extra-light
static const FontWeight w200 = FontWeight._(1, 200);

/// Light
static const FontWeight w300 = FontWeight._(2, 300);

/// Normal / regular / plain
static const FontWeight w400 = FontWeight._(3, 400);

/// Medium
static const FontWeight w500 = FontWeight._(4, 500);

/// Semi-bold
static const FontWeight w600 = FontWeight._(5, 600);

/// Bold
static const FontWeight w700 = FontWeight._(6, 700);

/// Extra-bold
static const FontWeight w800 = FontWeight._(7, 800);

/// Black, the most thick
static const FontWeight w900 = FontWeight._(8, 900);

/// The default font weight.
static const FontWeight normal = w400;

/// A commonly used font weight that is heavier than normal.
static const FontWeight bold = w700;