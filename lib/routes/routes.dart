import 'package:flutter/material.dart';
import 'package:online_courses_app/view/screens/home_page/home_page.dart';

class Routes {
  static String homePage = '/';
  static String detailsPage = 'details_page';
  static String paymentPage = 'payment_page';

  static Map<String, WidgetBuilder> myRoutes = {
    homePage: (context) => const HomePage(),
  };
}
