part of 'users_cubit.dart';

enum UserStatus {
  initial,
  loading,
  loaded,
  error,
}

class UsersState extends Equatable {
  const UsersState({
    required this.status,
    this.data,
    this.userList,
    this.error,
  });

  final UserStatus status;
  final UserList? data;
  final List<UserModel>? userList;
  final String? error;

  @override
  List<Object?> get props => [status, data, userList, error];

  UsersState copyWith({
    UserStatus? status,
    UserList? data,
    List<UserModel>? userList,
    String? error,
  }) {
    return UsersState(
      status: status ?? this.status,
      data: data ?? this.data,
      userList: userList ?? this.userList,
      error: error ?? this.error,
    );
  }
}
