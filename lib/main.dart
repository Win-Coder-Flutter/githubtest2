import 'package:flutter/material.dart';
import 'package:githubtest2/app_config.dart';

void main(List<String> args) {
  setAppConfig();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppConfig.shared.kk),
      ),
    );
  }
}

void setAppConfig() {
  String id = "";
  Flavor flv = Flavor.dev;
  String envFlv = const String.fromEnvironment('FLV', defaultValue: "");
  switch (envFlv) {
    case "prod":
      {
        id = "";
        flv = Flavor.prod;
        break;
      }
    case "dev":
      {
        id = "";
        flv = Flavor.dev;
        break;
      }
  }
  AppConfig.create(
    appID: id,
    flavor: flv,
    kk: const String.fromEnvironment("kk", defaultValue: ""),
    appDesc: const String.fromEnvironment('APP_DESC', defaultValue: ""),
    baseURL: const String.fromEnvironment('BASE_URL', defaultValue: ""),
    appName:
        const String.fromEnvironment('APP_NAME', defaultValue: ""),
  );
}
