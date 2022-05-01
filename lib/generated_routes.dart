import 'package:bloc_in_bloc_streaming_issue/blocs/bloc/global_bloc_bloc.dart';
import 'package:bloc_in_bloc_streaming_issue/screens/details/bloc/details_bloc_bloc.dart';
import 'package:bloc_in_bloc_streaming_issue/screens/details/details.dart';
import 'package:bloc_in_bloc_streaming_issue/screens/details/details_args.dart';
import 'package:bloc_in_bloc_streaming_issue/services/details_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GeneratedRoutes {
  static MaterialPageRoute? getAll(RouteSettings settings) {
    if (settings.name == Details.routeName) {
      final DetailsArgs args = settings.arguments as DetailsArgs;

      return MaterialPageRoute(
        builder: (context) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) {
                  return DetailsBloc(
                    context.read<IDetailsService>(),
                    context.read<GlobalBloc>().stream,
                  );
                },
              ),
            ],
            child: Details(args.title),
          );
        },
        settings: const RouteSettings(name: Details.routeName),
      );
    }
    return null;
  }
}
