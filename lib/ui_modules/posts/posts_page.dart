import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/data/app_data.dart';
import 'package:auto_route_test/data/app_state.dart';
import 'package:auto_route_test/routes/router.gr.dart';
import 'package:auto_route_test/ui_modules/posts/posts_cubit.dart';
import 'package:auto_route_test/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsPage extends StatelessWidget {
  PostsPage({Key? key}) : super(key: key);

  final _posts = Post.posts;
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Posts'),
        centerTitle: true,
        leading: const AutoBackButton(),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => appState.logout(),
          ),
        ],
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
                      context.router.push(SinglePostTabRoute(postId: post.id)));
            });
      }),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              heroTag: 'posts_add',
              child: const Icon(Icons.add),
              onPressed: () {
                context.read<PostsCubit>().increment();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              heroTag: 'posts_remove',
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
