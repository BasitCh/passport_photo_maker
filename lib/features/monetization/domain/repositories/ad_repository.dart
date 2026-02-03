import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';

/// Repository interface for ad operations (Domain layer)
abstract class AdRepository {
  /// Load banner ad
  Future<Either<Failure, Unit>> loadBannerAd();

  /// Load interstitial ad
  Future<Either<Failure, Unit>> loadInterstitialAd();

  /// Show interstitial ad
  Future<Either<Failure, Unit>> showInterstitialAd();

  /// Check if ads are enabled (not pro user)
  Future<Either<Failure, bool>> areAdsEnabled();

  /// Record export for interstitial frequency
  Future<Either<Failure, Unit>> recordExport();
}
