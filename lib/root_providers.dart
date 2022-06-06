import 'package:bloc_in_bloc_streaming_issue/blocs/bloc/global_bloc_bloc.dart';
import 'package:bloc_in_bloc_streaming_issue/run_app.dart';
import 'package:bloc_in_bloc_streaming_issue/services/details_service.dart';
import 'package:bloc_in_bloc_streaming_issue/services/global_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootProviders {
  static Widget getAppWithProviders() {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<IGlobalService>(
          create: (context) => GlobalService(),
        ),
        RepositoryProvider<IDetailsService>(
          create: (context) => DetailsService(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<GlobalBloc>(
            create: (context) => GlobalBloc(context.read<IGlobalService>()),
          ),
        ],
        child: MyApp(),
      ),
    );
  }
}
