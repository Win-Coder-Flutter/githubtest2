import 'package:flutter/material.dart';

enum Flavor { dev, prod }

class AppConfig {
  String appVersion = ""; // Update internal version number, edit here
  bool skipsignin = true; // Skip Signin Page, edit here
  String appName = "";
  String appDesc = "";
  String appID = "";
  String baseURL = "";
  MaterialColor primaryColor = Colors.blue;
  Flavor flavor = Flavor.dev;
  String kk="";

  static AppConfig shared = AppConfig.create();

  factory AppConfig.create({
    String appName = "",
    String appDesc = "",
    String appID = "",
    MaterialColor primaryColor = Colors.blue,
    Flavor flavor = Flavor.dev,
    String baseURL = "",
    String kk=""
  }) {
    return shared =
        AppConfig(appName, appDesc, appID, primaryColor, flavor, baseURL,kk);
  }

  AppConfig(this.appName, this.appDesc, this.appID, this.primaryColor,
      this.flavor, this.baseURL,this.kk);
}