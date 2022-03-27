// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../features/users/pages/user_details.page.dart' as _i2;
import '../features/users/pages/user_from.page.dart' as _i3;
import '../features/users/users.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    UserListRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.UserListPage());
    },
    UserDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<UserDetailsRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.UserDetailsPage(key: args.key, title: args.title));
    },
    UserFormRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.UserFormPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(UserListRoute.name, path: '/'),
        _i4.RouteConfig(UserDetailsRoute.name, path: '/user-details-page'),
        _i4.RouteConfig(UserFormRoute.name, path: '/user-form-page')
      ];
}

/// generated route for
/// [_i1.UserListPage]
class UserListRoute extends _i4.PageRouteInfo<void> {
  const UserListRoute() : super(UserListRoute.name, path: '/');

  static const String name = 'UserListRoute';
}

/// generated route for
/// [_i2.UserDetailsPage]
class UserDetailsRoute extends _i4.PageRouteInfo<UserDetailsRouteArgs> {
  UserDetailsRoute({_i5.Key? key, required String title})
      : super(UserDetailsRoute.name,
            path: '/user-details-page',
            args: UserDetailsRouteArgs(key: key, title: title));

  static const String name = 'UserDetailsRoute';
}

class UserDetailsRouteArgs {
  const UserDetailsRouteArgs({this.key, required this.title});

  final _i5.Key? key;

  final String title;

  @override
  String toString() {
    return 'UserDetailsRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i3.UserFormPage]
class UserFormRoute extends _i4.PageRouteInfo<void> {
  const UserFormRoute() : super(UserFormRoute.name, path: '/user-form-page');

  static const String name = 'UserFormRoute';
}
