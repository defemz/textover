
import 'dart:io';
import 'dart:math';

import 'package:textover/payment.dart';
//import 'package:connectivity/connectivity.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter/material.dart';
import 'package:textover/payment.dart';
import 'dart:async';
import 'global.dart' as myGlobal;

import 'classhub.dart';


class Ads {
  static bool isShown = false;
  static bool isGoingToBeShown = false;
  static BannerAd bannerAd;
  static InterstitialAd interstitialAd;
  static bool interstitialReady = false;
  static RewardedAd rewardedAd;
  static  bool rewardedReady = false;
  static final Completer<BannerAd> bannerCompleter = Completer<BannerAd>();

  static void initialize() {
    // MobileAds.instance.initialize();
    // FirebaseAdMob.instance.initialize(appId: 'ca-app-pub-2767291448114876~7988200848');
    MobileAds.instance.initialize();
  }

  static Future<String> checkSubSub(int adHeight)async{
    //ClassHub().showToast(await Payment.checkIfAlreadyBought());
    if(await checkInternet() == true) {
      if(adHeight == 0){
        return "Yes";
      }else if(adHeight == 1) {
        return await Payment.checkIfAlreadyBought();
      }
    }
    if(await checkInternet() == false){
      if(await ClassHub().mySharedPreference("premiumTokenSP", "get", null) != null){
        return "Yes";
      }
      else{
        return "No";
      }
    }
  }



  /*static Future<bool> checkInternet()async{
    bool isConnectedToInternet = false;
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      // I am not connected to a network.
      isConnectedToInternet = false;
      return false;
    } else {
      // I am connected to a network.
      isConnectedToInternet = true;
      return true;
    }
    //return isConnectedToInternet;
  }*/

  static Future<void> delayAdDialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          //title: Text('Schedule Prayer'),
          content:  Container(
            child: Container(
              height: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    //margin: EdgeInsets.only(bottom: 7),
                    child: CircularProgressIndicator(),
                  ),
                  Container(
                    child: Text("Wait! Just a moment"),
                  ),

                ],
              ),
            ),
          ),/*Expanded(

         ),),*/

        );
      },
    );
  }

  static Future<bool> checkInternet()async{
    bool isConnectedToInternet = false;
    final result = await InternetAddress.lookup('google.com');
    // var connectivityResult = await (Connectivity().checkConnectivity());
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      // I am not connected to a network.
      print("vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv");
      isConnectedToInternet = true;
      return true;
    } else {
      // I am connected to a network.
      isConnectedToInternet = false;
      return false;
    }
    //return isConnectedToInternet;
  }

  static bool checkAdIntervals(){
    int intervalDivisor = 3;
    if(myGlobal.myAdIntervalIncrement % intervalDivisor == 0 || myGlobal.myAdIntervalIncrement == 1){
      return true;
    }else{
      return false;
    }

  }

  static BannerAd banner(bool bigOrSmall){
    //myGlobal.isPremium = true;
    if(myGlobal.isPremium == true) return null;
    return bannerAd = BannerAd(
      adUnitId: BannerAd.testAdUnitId,
      //adUnitId: "ca-app-pub-2767291448114876/1905436749",
      size: bigOrSmall == true?AdSize.banner:AdSize.mediumRectangle,
      request: AdRequest(),
      listener: AdListener(// Called when an ad is successfully received.
        onAdLoaded: (Ad ad) {
          myGlobal.isBannerLoaded = true;
          //bannerCompleter.complete(ad as BannerAd);
        },
        // Called when an ad request failed.
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('$BannerAd failed To Load: $error');
          //ad.dispose();
        },
        // Called when an ad opens an overlay that covers the screen.
        onAdOpened: (Ad ad) => print('Ad opened.'),
        // Called when an ad removes an overlay that covers the screen.
        onAdClosed: (Ad ad) => print('Ad closed.'),
        // Called when an ad is in the process of leaving the application.
        onApplicationExit: (Ad ad) => print('Application exited.'),
      ),
    )..load();
  }


  static InterstitialAd createInterstitialAd() {
    //myGlobal.isPremium = true;
    if(myGlobal.isPremium == true) return null;
    if(checkAdIntervals() == false) return null;
    //Random rand = Random();
    print("NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN");
    print(myGlobal.myAdIntervalIncrement);
    // int myRand = rand.nextInt(i);
    //if(myRand != 1) return null;
    return InterstitialAd(
      adUnitId: InterstitialAd.testAdUnitId,
      //adUnitId: "ca-app-pub-2767291448114876/1395135006",
      request: AdRequest(),
      listener: AdListener(
        onAdLoaded: (Ad ad) {
          (ad as InterstitialAd).show();
          print('${ad.runtimeType} loaded.');
          interstitialReady = true;
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('${ad.runtimeType} failed to load: $error.');
          ad.dispose();
          interstitialAd = null;
          createInterstitialAd();
        },
        onAdOpened: (Ad ad) => print('${ad.runtimeType} onAdOpened.'),
        onAdClosed: (Ad ad) {
          print('${ad.runtimeType} closed.');
          ad.dispose();
          //createInterstitialAd();
        },
        onApplicationExit: (Ad ad) =>
            print('${ad.runtimeType} onApplicationExit.'),
      ),
    )..load();
  }

  static RewardedAd createRewardedAd() {
    if(myGlobal.isPremium == true) return null;
    if(checkAdIntervals() == false) return null;
    return RewardedAd(
      adUnitId: RewardedAd.testAdUnitId,
      //adUnitId: "ca-app-pub-2767291448114876/6339120367",
      request: AdRequest(),
      listener: AdListener(
          onAdLoaded: (Ad ad) {
            (ad as RewardedAd).show();
            print('${ad.runtimeType} loaded.');
            rewardedReady = true;
          },
          onAdFailedToLoad: (Ad ad, LoadAdError error) {
            print('${ad.runtimeType} failed to load: $error');
            ad.dispose();
            rewardedAd = null;
            createRewardedAd();
          },
          onAdOpened: (Ad ad) => print('${ad.runtimeType} onAdOpened.'),
          onAdClosed: (Ad ad) {
            print('${ad.runtimeType} closed.');
            ad.dispose();
            //createRewardedAd();
          },
          onApplicationExit: (Ad ad) =>
              print('${ad.runtimeType} onApplicationExit.'),
          onRewardedAdUserEarnedReward: (RewardedAd ad, RewardItem reward) {
            print(
              '$RewardedAd with reward $RewardItem(${reward.amount}, ${reward.type})',
            );
          }),
    )..load();
  }



/* static void showBannerAd([State state]) async{
    ///if (Purchases.isNoAds()) return;
    if(await checkSubSub() == "Yes") return;
    //if (state != null && !state.mounted) return;
    if (_bannerAd == null) setBannerAd();
    if (!isShown && !_isGoingToBeShown) {
      _isGoingToBeShown = true;
      _bannerAd
        ..load()
        ..show(anchorOffset: 0.0, anchorType: AnchorType.bottom);
    }
  }

  static void hideBannerAd() {
    if (_bannerAd != null && !_isGoingToBeShown) {
      _bannerAd.dispose().then((disposed) {
        isShown = !disposed;
      });
      _bannerAd = null;
    }
  }

  static void showInterstitialAd() async{
    if(await checkSubSub() == "Yes") return;
    var interstitialAd = InterstitialAd(
      //The ff Ad unit id is for test purpose
      adUnitId: 'ca-app-pub-3940256099942544/1033173712',
      //adUnitId: 'ca-app-pub-2767291448114876/6677869049',
      targetingInfo: _getMobileAdTargetingInfo(),
      listener: (MobileAdEvent event) {
        print("InterstitialAd event is $event");
      },
    );
    interstitialAd
      ..load()
      ..show(anchorOffset: 0.0, anchorType: AnchorType.bottom);
  }

  /*static void showRewardedVideoAd() {
    RewardedVideoAd.instance.listener = (RewardedVideoAdEvent event, {String rewardType, int rewardAmount}) {
      if (event == RewardedVideoAdEvent.loaded) {
        RewardedVideoAd.instance.show();
      }
    };
    RewardedVideoAd.instance.load(adUnitId: getRewardAdUnitId(), targetingInfo: _getMobileAdTargetingInfo());
  }*/

  static MobileAdTargetingInfo _getMobileAdTargetingInfo() {
    return MobileAdTargetingInfo(
     // keywords: <String>['whatsapp message', 'scheduler', 'text messages', 'sms', 'chat', 'planner'],
      //contentUrl: 'https://whatsthatflower.com/',
      childDirected: false,
      //testDevices: <String>["76C716E943F9C600DC4A44B5BE8D87EC"],
    );
  }*/
}