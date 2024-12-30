/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/apple.svg
  String get apple => 'assets/icons/apple.svg';

  /// File path: assets/icons/check.svg
  String get check => 'assets/icons/check.svg';

  /// File path: assets/icons/dots.svg
  String get dots => 'assets/icons/dots.svg';

  /// File path: assets/icons/facebook.svg
  String get facebook => 'assets/icons/facebook.svg';

  /// File path: assets/icons/full_screen.svg
  String get fullScreen => 'assets/icons/full_screen.svg';

  /// File path: assets/icons/google.svg
  String get google => 'assets/icons/google.svg';

  /// File path: assets/icons/icons.ttf
  String get icons => 'assets/icons/icons.ttf';

  /// File path: assets/icons/login.svg
  String get login => 'assets/icons/login.svg';

  /// File path: assets/icons/paypal.svg
  String get paypal => 'assets/icons/paypal.svg';

  /// File path: assets/icons/play.svg
  String get play => 'assets/icons/play.svg';

  /// File path: assets/icons/quote.svg
  String get quote => 'assets/icons/quote.svg';

  /// File path: assets/icons/schdule.svg
  String get schdule => 'assets/icons/schdule.svg';

  /// File path: assets/icons/sound.svg
  String get sound => 'assets/icons/sound.svg';

  /// File path: assets/icons/time.svg
  String get time => 'assets/icons/time.svg';

  /// File path: assets/icons/visa.svg
  String get visa => 'assets/icons/visa.svg';

  /// File path: assets/icons/vodafone.svg
  String get vodafone => 'assets/icons/vodafone.svg';

  /// File path: assets/icons/withe_circle.svg
  String get witheCircle => 'assets/icons/withe_circle.svg';

  /// File path: assets/icons/work.svg
  String get work => 'assets/icons/work.svg';

  /// List of all assets
  List<String> get values => [
        apple,
        check,
        dots,
        facebook,
        fullScreen,
        google,
        icons,
        login,
        paypal,
        play,
        quote,
        schdule,
        sound,
        time,
        visa,
        vodafone,
        witheCircle,
        work
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/image.png
  AssetGenImage get image => const AssetGenImage('assets/images/image.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/user.png
  AssetGenImage get user => const AssetGenImage('assets/images/user.png');

  /// File path: assets/images/user_1.png
  AssetGenImage get user1 => const AssetGenImage('assets/images/user_1.png');

  /// File path: assets/images/user_2.png
  AssetGenImage get user2 => const AssetGenImage('assets/images/user_2.png');

  /// File path: assets/images/user_3.png
  AssetGenImage get user3 => const AssetGenImage('assets/images/user_3.png');

  /// File path: assets/images/user_4.png
  AssetGenImage get user4 => const AssetGenImage('assets/images/user_4.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [image, logo, user, user1, user2, user3, user4];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
