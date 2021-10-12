import 'package:auto_route/auto_route.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/home_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/not_found/page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/posts/posts_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/posts/posts_wrapper_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/posts/single_post_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/routes/post_checker.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/settings/settings_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/users/user_profile_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/users/users_page.dart';
import 'package:flutter_bottom_navigation_with_nested_routing_tutorial/users/users_wrapper_page.dart';

/// router
/// AutoRouter.of(context)
/// context.router

/// navigate
/// context.pushRoute(SinglePostRoute(postId: id))
/// context.router.push(SinglePostRoute(postId: id)
/// context.router.pushNamed("/posts")

/// navigate to another tab
/// context.navigateTo(PostsRouter(children: SinglePostRoute(postId: id)))
/// context.pushRoute(AccountRouter(children: [AccountRoute(), AccountSettingsRoute()]));

/// context.router.root.push();

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
          page: PostsWrapperPage,
          children: [
            AutoRoute(path: '', page: PostsPage),
            AutoRoute(path: ':postId', guards: [CheckIfPostExists], page: SinglePostPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          path: 'users',
          name: 'UsersRouter',
          page: UsersWrapperPage,
          children: [
            AutoRoute(path: '', page: UsersPage),
            AutoRoute(path: ':userId', page: UserProfilePage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          path: 'settings',
          name: 'SettingsRouter',
          page: SettingsPage,
        )
      ],
    ),
    AutoRoute(
      path: '404',
      page: NotFoundPage,
    ),
  ],
)
class $AppRouter {}
