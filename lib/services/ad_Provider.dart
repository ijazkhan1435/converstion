//
// import 'dart:developer';
//
// import 'package:flutter/material.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
//
// import 'adshelper.dart';
// class AdProvider with ChangeNotifier{
//   bool isHomeScreenBannerLoaded = false;
//   late BannerAd homeScreenBanner;
//
//   void initializeHomeScreenBanner()async{
//     homeScreenBanner= BannerAd(
//       adUnitId: AdHelper.homeScreenBanner(),
//         size: AdSize.banner,
//
//         request: AdRequest(),
//         listener: BannerAdListener(
//           onAdLoaded: (ad){
//             log("HomeScreen Banner Loaded!");
//             isHomeScreenBannerLoaded=true;
//           },
//           onAdClosed: (ad){
//             ad.dispose();
//             isHomeScreenBannerLoaded= false;
//           },
//           onAdFailedToLoad: (ad,err){
//             log(err.toString());
//             isHomeScreenBannerLoaded=false;
//           }
//         ),);
//     await homeScreenBanner.load();
//     notifyListeners();
//   }
// }