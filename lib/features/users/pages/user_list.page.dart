import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:teach_bloc_with_api/navigation/navigation.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _route = AutoRouter.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _route.pushAll([
              UserDetailsRoute(title: "Hello From Other Side"),
              UserDetailsRoute(title: "Hello From Other Side")
            ]);
          },
          child: const Text('Go to Details'),
        ),
      ),
    );
  }
}
