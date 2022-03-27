import 'package:dio/dio.dart';
import 'package:teach_bloc_with_api/features/users/data/model/user_list.modal.dart';

class UserRepo {
  UserRepo({required this.client});

  final Dio client;

  Future<UserList> getUsers() async {
    try {
      final response = await client.get('/users');
      final UserList userList = UserList.fromJson(response.data);

      return userList;
    } on DioError {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
