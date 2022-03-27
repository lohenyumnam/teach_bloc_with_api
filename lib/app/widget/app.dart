import 'package:flutter/material.dart';
import 'package:teach_bloc_with_api/app/widget/material_app_wrapper.dart';
import 'package:teach_bloc_with_api/app/widget/multi_bloc_wrapper.dart';

import 'multi_repo_wrapper.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MultiRepoWrapper(
      child: MultiBlocWrapper(
        child: MaterialAppWrapper(),
      ),
    );
  }
}
