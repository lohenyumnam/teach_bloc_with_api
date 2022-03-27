import 'package:auto_route/auto_route.dart';
import 'package:teach_bloc_with_api/features/users/pages/user_details.page.dart';
import 'package:teach_bloc_with_api/features/users/pages/user_from.page.dart';
import 'package:teach_bloc_with_api/features/users/users.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: UserListPage, initial: true),
    AutoRoute(page: UserDetailsPage),
    AutoRoute(page: UserFormPage),
  ],
)
class $AppRouter {}
