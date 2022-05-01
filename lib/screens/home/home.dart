import 'package:bloc_in_bloc_streaming_issue/blocs/bloc/global_bloc_bloc.dart';
import 'package:bloc_in_bloc_streaming_issue/screens/details/details.dart';
import 'package:bloc_in_bloc_streaming_issue/screens/details/details_args.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  static const String routeName = '/home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    context.read<GlobalBloc>().add(GetGlobalTestData(DateTime.now().millisecondsSinceEpoch));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalBloc, GlobalBlocState>(
      builder: (context, state) {
        if (state is GlobalTestDataLoading) {
          return const Scaffold(body: Center(child: CircularProgressIndicator.adaptive()));
        }
        if (state is GlobalTestDataLoaded) {
          return _main();
        }
        return Container();
      },
    );
  }

  Widget _main() {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: MaterialButton(
          minWidth: 200,
          height: 42,
          disabledColor: Colors.grey[300],
          textColor: Theme.of(context).scaffoldBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          onPressed: () => Navigator.pushNamed(
            context,
            Details.routeName,
            arguments: const DetailsArgs('Details'),
          ),
          color: Colors.blue,
          child: const Text(
            'Go to details',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
