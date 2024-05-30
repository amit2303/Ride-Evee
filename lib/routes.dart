
import 'package:ride/pages/account_page.dart';
import 'package:ride/pages/home_page.dart';
import 'package:ride/pages/more_page.dart';
import 'package:ride/pages/mytrip_page.dart';

import 'exports.dart';




class Routes {
  static const String homeRoute = "/";
  static const String mytripRoute = "/myTrip";
  static const String accountRoute = "/account";
  static const String moreRoute = "/more";
}


class RouteGenerator {
  static Route getRoute(RouteSettings routeSettings){
    switch (routeSettings.name) {
    case Routes.mytripRoute:
    return MaterialPageRoute(builder: (context)=>MytripPage());
    case Routes.accountRoute:
    return MaterialPageRoute(builder: (context)=>AccountPage());
    case Routes.moreRoute:
    return MaterialPageRoute(builder: (context)=>MorePage());
    
    default: return MaterialPageRoute(builder: (context)=>HomePage());
  }
  }
}