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

  /// File path: assets/icons/club.png
  AssetGenImage get club => const AssetGenImage('assets/icons/club.png');

  /// File path: assets/icons/match.png
  AssetGenImage get match => const AssetGenImage('assets/icons/match.png');

  /// File path: assets/icons/news.png
  AssetGenImage get news => const AssetGenImage('assets/icons/news.png');

  /// File path: assets/icons/sponsor.png
  AssetGenImage get sponsor => const AssetGenImage('assets/icons/sponsor.png');

  /// File path: assets/icons/statistic.png
  AssetGenImage get statistic =>
      const AssetGenImage('assets/icons/statistic.png');

  /// File path: assets/icons/table.png
  AssetGenImage get table => const AssetGenImage('assets/icons/table.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [club, match, news, sponsor, statistic, table];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/arema.png
  AssetGenImage get arema => const AssetGenImage('assets/images/arema.png');

  /// File path: assets/images/bali.png
  AssetGenImage get bali => const AssetGenImage('assets/images/bali.png');

  /// File path: assets/images/barito.png
  AssetGenImage get barito => const AssetGenImage('assets/images/barito.png');

  /// File path: assets/images/bhayangkara.png
  AssetGenImage get bhayangkara =>
      const AssetGenImage('assets/images/bhayangkara.png');

  /// File path: assets/images/borneo.png
  AssetGenImage get borneo => const AssetGenImage('assets/images/borneo.png');

  /// File path: assets/images/bri_liga_1.png
  AssetGenImage get briLiga1 =>
      const AssetGenImage('assets/images/bri_liga_1.png');

  /// File path: assets/images/dewa.png
  AssetGenImage get dewa => const AssetGenImage('assets/images/dewa.png');

  /// File path: assets/images/indosiar.png
  AssetGenImage get indosiar =>
      const AssetGenImage('assets/images/indosiar.png');

  /// File path: assets/images/madura.png
  AssetGenImage get madura => const AssetGenImage('assets/images/madura.png');

  /// File path: assets/images/moji.png
  AssetGenImage get moji => const AssetGenImage('assets/images/moji.png');

  /// File path: assets/images/persebaya.png
  AssetGenImage get persebaya =>
      const AssetGenImage('assets/images/persebaya.png');

  /// File path: assets/images/persib.png
  AssetGenImage get persib => const AssetGenImage('assets/images/persib.png');

  /// File path: assets/images/persija.png
  AssetGenImage get persija => const AssetGenImage('assets/images/persija.png');

  /// File path: assets/images/persik.png
  AssetGenImage get persik => const AssetGenImage('assets/images/persik.png');

  /// File path: assets/images/persikabo.png
  AssetGenImage get persikabo =>
      const AssetGenImage('assets/images/persikabo.png');

  /// File path: assets/images/persis.png
  AssetGenImage get persis => const AssetGenImage('assets/images/persis.png');

  /// File path: assets/images/psis.png
  AssetGenImage get psis => const AssetGenImage('assets/images/psis.png');

  /// File path: assets/images/psm.png
  AssetGenImage get psm => const AssetGenImage('assets/images/psm.png');

  /// File path: assets/images/rans.png
  AssetGenImage get rans => const AssetGenImage('assets/images/rans.png');

  /// File path: assets/images/vidio.png
  AssetGenImage get vidio => const AssetGenImage('assets/images/vidio.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        arema,
        bali,
        barito,
        bhayangkara,
        borneo,
        briLiga1,
        dewa,
        indosiar,
        madura,
        moji,
        persebaya,
        persib,
        persija,
        persik,
        persikabo,
        persis,
        psis,
        psm,
        rans,
        vidio
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
