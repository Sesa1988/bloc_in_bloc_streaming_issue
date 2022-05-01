import 'package:bloc_in_bloc_streaming_issue/blocs/bloc/global_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Details extends StatelessWidget {
  static const String routeName = '/details';

  final String title;

  const Details(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: MaterialButton(
        minWidth: 200,
        height: 42,
        disabledColor: Colors.grey[300],
        textColor: Theme.of(context).scaffoldBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        onPressed: () => context
            .read<GlobalBloc>()
            .add(GetGlobalTestData(DateTime.now().millisecondsSinceEpoch)),
        color: Colors.blue,
        child: const Text(
          'Get details',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
