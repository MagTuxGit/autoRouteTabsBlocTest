import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/data/app_data.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/posts/posts_cubit.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/routes/router.gr.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/widgets.dart';

class PostsPage extends StatelessWidget {
  PostsPage({Key? key}) : super(key: key);

  final _posts = Post.posts;
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Posts'),
        centerTitle: true,
        leading: const AutoBackButton(),
      ),
      body: BlocBuilder<PostsCubit, int>(builder: (context, postsCount) {
        return ListView.builder(
            controller: _scrollController,
            itemCount: postsCount,
            itemBuilder: (context, index) {
              final post = _posts[index];
              return PostTile(
                  tileColor: post.color,
                  postTitle: post.title,
                  onTileTap: () =>
                      context.router.push(SinglePostRoute(postId: post.id)));
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
                context.read<PostsCubit>().increment();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () => context.read<PostsCubit>().decrement(),
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
