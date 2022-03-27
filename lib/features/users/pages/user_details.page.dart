import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../navigation/navigation.dart';

class UserDetailsPage extends StatelessWidget {
  const UserDetailsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(title),
            ElevatedButton(
              onPressed: () {
                final _route = AutoRouter.of(context);
                _route.push(const UserFormRoute());
              },
              child: const Text('Go to Details'),
            )
          ],
        ),
      ),
    );
  }
}
