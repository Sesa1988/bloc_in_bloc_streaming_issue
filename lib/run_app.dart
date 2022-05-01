import 'package:bloc_in_bloc_streaming_issue/generated_routes.dart';
import 'package:bloc_in_bloc_streaming_issue/root_providers.dart';
import 'package:bloc_in_bloc_streaming_issue/screens/home/home.dart';
import 'package:flutter/material.dart';

void runExampleApp() {
  runApp(
    RootProviders.getAppWithProviders(),
  );
}

class MyApp extends StatelessWidget {
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
      title: 'GlobalBlocInBlocStream',
      debugShowCheckedModeBanner: false,
      theme: themeData.copyWith(
        colorScheme: themeData.colorScheme.copyWith(secondary: Colors.blue),
      ),
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (context) => Home(),
      },
      onGenerateRoute: (settings) {
        return GeneratedRoutes.getAll(settings);
      },
    );
  }
}
