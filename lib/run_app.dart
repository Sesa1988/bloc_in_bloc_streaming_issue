import 'package:bloc_in_bloc_streaming_issue/blocs/bloc/global_bloc_bloc.dart';
import 'package:bloc_in_bloc_streaming_issue/generated_routes.dart';
import 'package:bloc_in_bloc_streaming_issue/root_providers.dart';
import 'package:bloc_in_bloc_streaming_issue/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void runExampleApp() {
  runApp(
    RootProviders.getAppWithProviders(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    context.read<GlobalBloc>().add(GetTestData());
  }

  @override
  Widget build(BuildContext context) {
    return _createApp();
  }

  MaterialApp _createApp() {
    var themeData = ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: Colors.blue,
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

    return MaterialApp(
      title: 'CryptoWulf',
      debugShowCheckedModeBanner: false,
      theme: themeData.copyWith(
        colorScheme: themeData.colorScheme.copyWith(secondary: Colors.blue),
      ),
      initialRoute: Home.routeName,
      onGenerateRoute: (settings) {
        return GeneratedRoutes.getAll(settings);
      },
    );
  }
}
