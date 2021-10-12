import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/data/app_data.dart';
import 'package:auto_route_test/routes/router.gr.dart';

class PostGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final postId = resolver.route.pathParams.get("postId");
    final post = checkIfPostExists(postId);
    if (post != null) {
      resolver.next(true);
    } else {
      router.push(const NotFoundRoute());
    }
  }
}

Post? checkIfPostExists(int postId) {
  final posts = Post.posts;
  //return posts.length > postId ? posts[postId] : null;
  return null;
}
