import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:teach_bloc_with_api/features/users/data/model/user_list.modal.dart';
import 'package:teach_bloc_with_api/services/user.repo.dart';

part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  UsersCubit({required this.service})
      : super(const UsersState(status: UserStatus.initial));

  final UserRepo service;

  Future<void> getUser() async {
    emit(const UsersState(status: UserStatus.loading));

    try {
      final r = await service.getUsers();
      emit(state.copyWith(
        status: UserStatus.loaded,
        data: r,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: UserStatus.error,
        error: e.toString(),
      ));
    }
  }
}
