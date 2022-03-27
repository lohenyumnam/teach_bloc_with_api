import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teach_bloc_with_api/features/users/data/logic/users_cubit/users_cubit.dart';
import 'package:teach_bloc_with_api/services/user.repo.dart';

class MultiBlocWrapper extends StatelessWidget {
  const MultiBlocWrapper({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final _userAPI = context.read<UserRepo>();

    return MultiBlocProvider(
      providers: [
        BlocProvider<UsersCubit>(
          create: (context) => UsersCubit(service: _userAPI),
        ),
      ],
      child: child,
    );
  }
}
