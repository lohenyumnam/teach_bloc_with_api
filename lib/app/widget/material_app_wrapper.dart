import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teach_bloc_with_api/navigation/navigation.dart';

final _appRouter = AppRouter();

class MaterialAppWrapper extends StatelessWidget {
  const MaterialAppWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final _appRouter = context.read<AppRouter>();
    // final _appRouter = RepositoryProvider.of<AppRouter>(context);

    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
