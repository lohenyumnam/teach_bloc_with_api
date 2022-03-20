import 'package:flutter/material.dart';
import 'package:teach_bloc_with_api/services/client.dart';
import 'package:teach_bloc_with_api/services/user_api.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({Key? key}) : super(key: key);

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  UserAPI _userAPI = UserAPI(client: dio);

  @override
  void initState() {
    super.initState();
    _userAPI.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
