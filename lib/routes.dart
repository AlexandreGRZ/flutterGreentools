import 'package:dymatestflutter/screens/acceuilscreens/home.dart';
import 'package:dymatestflutter/screens/authentificationscreens/login/loginview.dart';
import 'package:dymatestflutter/screens/authentificationscreens/signin/signinview.dart';
import 'package:dymatestflutter/screens/displayscreens/cookingview.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> routes = {
  Home.routeName: (context) => const Home(),
  loginView.routeName: (context) => const loginView(),
  signinView.routeName: (context) => const signinView(),
  cookingview.routeName: (context) => const cookingview(),
};
