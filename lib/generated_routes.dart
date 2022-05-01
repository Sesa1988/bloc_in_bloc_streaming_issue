import 'package:bloc_in_bloc_streaming_issue/screens/details/details.dart';
import 'package:bloc_in_bloc_streaming_issue/screens/details/details_args.dart';
import 'package:flutter/material.dart';

class GeneratedRoutes {
  static MaterialPageRoute? getAll(RouteSettings settings) {
    if (settings.name == Details.routeName) {
      final DetailsArgs args = settings.arguments as DetailsArgs;

      return MaterialPageRoute(
        builder: (context) {
          return Details(args.title);
        },
        settings: const RouteSettings(name: Details.routeName),
      );
    }
    return null;
  }
}
