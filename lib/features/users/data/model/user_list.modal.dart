import 'package:json_annotation/json_annotation.dart';

part 'user_list.modal.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class UserList {
  UserList({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.list,
  });

  final int page;
  final int perPage;
  final int total;
  final int totalPages;
  @JsonKey(name: 'data')
  final List<UserModel> list;

  /// A necessary factory constructor for creating a new UserList instance
  /// from a map. Pass the map to the generated `_$UserListFromJson()` constructor.
  /// The constructor is named after the source class, in this case, UserList.
  factory UserList.fromJson(Map<String, dynamic> json) =>
      _$UserListFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserListToJson`.
  Map<String, dynamic> toJson() => _$UserListToJson(this);

  UserList copyWith({
    int? page,
    int? perPage,
    int? total,
    int? totalPages,
    List<UserModel>? list,
  }) {
    return UserList(
      page: page ?? this.page,
      perPage: perPage ?? this.perPage,
      total: total ?? this.total,
      totalPages: totalPages ?? this.totalPages,
      list: list ?? this.list,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class UserModel {
  UserModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  /// A necessary factory constructor for creating a new UserModel instance
  /// from a map. Pass the map to the generated `_$UserModelFromJson()` constructor.
  /// The constructor is named after the source class, in this case, UserModel.
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserModelToJson`.
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
