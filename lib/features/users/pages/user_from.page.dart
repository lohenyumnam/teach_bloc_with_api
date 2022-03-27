import 'package:flutter/material.dart';

class UserFormPage extends StatelessWidget {
  const UserFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: const Center(child: Text('User Form')),
    );
  }
}
