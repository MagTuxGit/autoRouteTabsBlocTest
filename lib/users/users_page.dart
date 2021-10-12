import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/data/app_data.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/routes/router.gr.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/users/users_cubit.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/widgets.dart';

class UsersPage extends StatelessWidget {
  UsersPage({Key? key}) : super(key: key);

  final _users = User.users;
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Users'),
        centerTitle: true,
        leading: const AutoBackButton(),
      ),
      body: BlocBuilder<UsersCubit, int>(builder: (context, usersCount) {
        return ListView.builder(
            controller: _scrollController,
            itemCount: usersCount,
            itemBuilder: (context, index) {
              final user = _users[index];
              return UserAvatar(
                avatarColor: user.color,
                username: user.name,
                onAvatarTap: () => context.router.push(
                  UserProfileRoute(
                    userId: user.id,
                  ),
                ),
              );
            });
      }),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                context.read<UsersCubit>().increment();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () => context.read<UsersCubit>().decrement(),
            ),
          ),
        ],
      ),
    );
  }

  void _scrollToBottom() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }
}
