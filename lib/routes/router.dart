import 'package:auto_route/auto_route.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/home_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/posts/posts_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/posts/single_post_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/settings/settings_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/users/user_profile_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/users/users_page.dart';

/// navigate
/// context.router.push(SinglePostRoute(postId: id)

/// navigate to another tab
/// context.navigateTo(PostsRouter(children: SinglePostRoute(postId: id)))

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'posts',
          name: 'PostsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: PostsPage),
            AutoRoute(path: ':postId', page: SinglePostPage),
          ],
        ),
        AutoRoute(
          path: 'users',
          name: 'UsersRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: UsersPage),
            AutoRoute(path: ':userId', page: UserProfilePage),
          ],
        ),
        AutoRoute(
          path: 'settings',
          name: 'SettingsRouter',
          page: SettingsPage,
        )
      ],
    )
  ],
)
class $AppRouter {}
