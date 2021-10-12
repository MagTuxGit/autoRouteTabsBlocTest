import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/posts/posts_cubit.dart';

class PostsWrapperPage extends StatelessWidget {
  const PostsWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostsCubit(),
      child:
          const AutoRouter(), // The AutoRouter() widget used here is required to render sub-routes
    );
  }
}
