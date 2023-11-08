import 'package:flutter/material.dart';

import 'package:export_readiness/login_screen.dart';
const firstPageRoute = '/firstPage/';
const shortPageRoute = '/shortPage/';
const secondPageRoute = '/secondPage/';
const thirdPageRoute = '/thirdPage/';
const fourthPageRoute = '/fourthPage/';
const fifthPageRoute = '/fifthPage/';

const homePageRoute = '/homePage';
const loginPageRoute = '/loginPage/';


class FadePageRoute<T> extends MaterialPageRoute<T> {
  FadePageRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
  }) : super(
          builder: builder,
          settings: settings,
        );

  @override
  Duration get transitionDuration => const Duration(milliseconds: 600);

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    if (settings.name == LoginScreen.routeName) {
      return child;
    }

    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}
