import 'package:dio/dio.dart';
import 'package:teach_bloc_with_api/features/users/data/model/user_list.modal.dart';

class UserAPI {
  UserAPI({required this.client});

  final Dio client;

  // Future<List<User>> getUsers() async {
  //   final response = await client.get('/users');
  //   return (response.data as List)
  //       .map((user) => User.fromJson(user))
  //       .toList();
  // }

  void getUsers() async {
    try {
      final response = await client.get('/users');
      print(response);
      final UserList userList = UserList.fromJson(response.data);
      for (var user in userList.list) {
        print(user.firstName);
      }
    } on DioError catch (e) {
      print(e.message);
    } catch (e) {
      print(e);
    }
  }
}
