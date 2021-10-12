import 'package:auto_route/auto_route.dart';
import 'package:auto_route_test/routes/post_guard.dart';
import 'package:auto_route_test/ui_modules/home_page.dart';
import 'package:auto_route_test/ui_modules/login/page.dart';
import 'package:auto_route_test/ui_modules/not_found/page.dart';
import 'package:auto_route_test/ui_modules/posts/posts_page.dart';
import 'package:auto_route_test/ui_modules/posts/posts_wrapper_page.dart';
import 'package:auto_route_test/ui_modules/posts/single_post_page.dart';
import 'package:auto_route_test/ui_modules/settings/settings_page.dart';
import 'package:auto_route_test/ui_modules/splash.dart';
import 'package:auto_route_test/ui_modules/users/user_profile_page.dart';
import 'package:auto_route_test/ui_modules/users/users_page.dart';
import 'package:auto_route_test/ui_modules/users/users_wrapper_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(path: 'login', page: LoginPage),
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
            AutoRoute(path: ':postId', guards: [PostGuard], page: SinglePostPage),
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
    AutoRoute(path: '404', page: NotFoundPage),
  ],
)
class $AppRouter {}
