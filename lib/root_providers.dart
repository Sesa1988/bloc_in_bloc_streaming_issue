import 'package:bloc_in_bloc_streaming_issue/blocs/bloc/global_bloc_bloc.dart';
import 'package:bloc_in_bloc_streaming_issue/run_app.dart';
import 'package:bloc_in_bloc_streaming_issue/services/global_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootProviders {
  static MultiBlocProvider getAppWithProviders() {
    var globalService = GlobalService();

    return MultiBlocProvider(
      providers: [
        BlocProvider<GlobalBloc>(
          create: (BuildContext context) => GlobalBloc(globalService),
        ),
      ],
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider<IGlobalService>(
            create: (context) => globalService,
          ),
        ],
        child: MyApp(),
      ),
    );
  }
}
