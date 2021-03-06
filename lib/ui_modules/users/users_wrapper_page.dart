import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/ui_modules/users/users_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersWrapperPage extends StatelessWidget {
  const UsersWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UsersCubit(),
      child:
          const AutoRouter(), // The AutoRouter() widget used here is required to render sub-routes
    );
  }
}
