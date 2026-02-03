import "dart:io";

import "package:flutter/material.dart";
import "package:google_mobile_ads/google_mobile_ads.dart";

class AdService {
  static const bool adsEnabled = true;

  static String get bannerUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/6300978111";
    }
    return "ca-app-pub-3940256099942544/2934735716";
  }

  static String get interstitialUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/1033173712";
    }
    return "ca-app-pub-3940256099942544/4411468910";
  }
}

class BannerAdWidget extends StatefulWidget {
  const BannerAdWidget({super.key});

  @override
  State<BannerAdWidget> createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends State<BannerAdWidget> {
  BannerAd? _bannerAd;

  @override
  void initState() {
    super.initState();
    if (!AdService.adsEnabled) {
      return;
    }
    _bannerAd = BannerAd(
      adUnitId: AdService.bannerUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: const BannerAdListener(),
    )..load();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!AdService.adsEnabled || _bannerAd == null) {
      return const SizedBox.shrink();
    }
    return SizedBox(
      width: _bannerAd!.size.width.toDouble(),
      height: _bannerAd!.size.height.toDouble(),
      child: AdWidget(ad: _bannerAd!),
    );
  }
}

class InterstitialAdManager {
  InterstitialAdManager() {
    if (AdService.adsEnabled) {
      _loadInterstitial();
    }
  }

  int _exportCount = 0;
  InterstitialAd? _interstitialAd;

  void recordExportAndShowIfNeeded(VoidCallback onComplete) {
    if (!AdService.adsEnabled) {
      onComplete();
      return;
    }

    _exportCount += 1;
    final shouldShow = _exportCount % 3 == 0;

    if (!shouldShow || _interstitialAd == null) {
      onComplete();
      return;
    }

    _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) {
        ad.dispose();
        _loadInterstitial();
        onComplete();
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        ad.dispose();
        _loadInterstitial();
        onComplete();
      },
    );

    _interstitialAd!.show();
    _interstitialAd = null;
  }

  void dispose() {
    _interstitialAd?.dispose();
  }

  void _loadInterstitial() {
    InterstitialAd.load(
      adUnitId: AdService.interstitialUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd = ad;
        },
        onAdFailedToLoad: (error) {
          _interstitialAd = null;
        },
      ),
    );
  }
}
