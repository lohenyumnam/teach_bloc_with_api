import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teach_bloc_with_api/navigation/navigation.dart';
import 'package:teach_bloc_with_api/services/client.dart';
import 'package:teach_bloc_with_api/services/user.repo.dart';

class MultiRepoWrapper extends StatelessWidget {
  const MultiRepoWrapper({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AppRouter(),
        ),
        RepositoryProvider<Dio>(
          create: (context) => Dio(dioOptions),
        ),
        RepositoryProvider<UserRepo>(
          create: (context) => UserRepo(client: context.read<Dio>()),
        ),
      ],
      child: child,
    );
  }
}
