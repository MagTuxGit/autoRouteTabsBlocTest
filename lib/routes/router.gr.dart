// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../ui_modules/home_page.dart' as _i3;
import '../ui_modules/login/page.dart' as _i2;
import '../ui_modules/not_found/page.dart' as _i4;
import '../ui_modules/posts/posts_page.dart' as _i8;
import '../ui_modules/posts/posts_wrapper_page.dart' as _i5;
import '../ui_modules/posts/single_post_page.dart' as _i9;
import '../ui_modules/settings/settings_page.dart' as _i7;
import '../ui_modules/splash.dart' as _i1;
import '../ui_modules/users/user_profile_page.dart' as _i11;
import '../ui_modules/users/users_page.dart' as _i10;
import '../ui_modules/users/users_wrapper_page.dart' as _i6;
import 'post_guard.dart' as _i14;

class AppRouter extends _i12.RootStackRouter {
  AppRouter(
      {_i13.GlobalKey<_i13.NavigatorState>? navigatorKey,
      required this.postGuard})
      : super(navigatorKey);

  final _i14.PostGuard postGuard;

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    LoginRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginPage());
    },
    HomeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    NotFoundRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.NotFoundPage());
    },
    PostsRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PostsWrapperPage());
    },
    UsersRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.UsersWrapperPage());
    },
    SettingsRouter.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SettingsPage());
    },
    PostsRoute.name: (routeData) {
      final args = routeData.argsAs<PostsRouteArgs>(
          orElse: () => const PostsRouteArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i8.PostsPage(key: args.key));
    },
    SinglePostRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<SinglePostRouteArgs>(
          orElse: () =>
              SinglePostRouteArgs(postId: pathParams.getInt('postId')));
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.SinglePostPage(key: args.key, postId: args.postId));
    },
    UsersRoute.name: (routeData) {
      final args = routeData.argsAs<UsersRouteArgs>(
          orElse: () => const UsersRouteArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i10.UsersPage(key: args.key));
    },
    UserProfileRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<UserProfileRouteArgs>(
          orElse: () =>
              UserProfileRouteArgs(userId: pathParams.getInt('userId')));
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.UserProfilePage(key: args.key, userId: args.userId));
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(SplashRoute.name, path: '/'),
        _i12.RouteConfig(LoginRoute.name, path: 'login'),
        _i12.RouteConfig(HomeRoute.name, path: '/', children: [
          _i12.RouteConfig(PostsRouter.name, path: 'posts', children: [
            _i12.RouteConfig(PostsRoute.name, path: ''),
            _i12.RouteConfig(SinglePostRoute.name,
                path: ':postId', guards: [postGuard]),
            _i12.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ]),
          _i12.RouteConfig(UsersRouter.name, path: 'users', children: [
            _i12.RouteConfig(UsersRoute.name, path: ''),
            _i12.RouteConfig(UserProfileRoute.name, path: ':userId'),
            _i12.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ]),
          _i12.RouteConfig(SettingsRouter.name, path: 'settings')
        ]),
        _i12.RouteConfig(NotFoundRoute.name, path: '404')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.LoginPage]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute() : super(name, path: 'login');

  static const String name = 'LoginRoute';
}

/// generated route for [_i3.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i4.NotFoundPage]
class NotFoundRoute extends _i12.PageRouteInfo<void> {
  const NotFoundRoute() : super(name, path: '404');

  static const String name = 'NotFoundRoute';
}

/// generated route for [_i5.PostsWrapperPage]
class PostsRouter extends _i12.PageRouteInfo<void> {
  const PostsRouter({List<_i12.PageRouteInfo>? children})
      : super(name, path: 'posts', initialChildren: children);

  static const String name = 'PostsRouter';
}

/// generated route for [_i6.UsersWrapperPage]
class UsersRouter extends _i12.PageRouteInfo<void> {
  const UsersRouter({List<_i12.PageRouteInfo>? children})
      : super(name, path: 'users', initialChildren: children);

  static const String name = 'UsersRouter';
}

/// generated route for [_i7.SettingsPage]
class SettingsRouter extends _i12.PageRouteInfo<void> {
  const SettingsRouter() : super(name, path: 'settings');

  static const String name = 'SettingsRouter';
}

/// generated route for [_i8.PostsPage]
class PostsRoute extends _i12.PageRouteInfo<PostsRouteArgs> {
  PostsRoute({_i13.Key? key})
      : super(name, path: '', args: PostsRouteArgs(key: key));

  static const String name = 'PostsRoute';
}

class PostsRouteArgs {
  const PostsRouteArgs({this.key});

  final _i13.Key? key;
}

/// generated route for [_i9.SinglePostPage]
class SinglePostRoute extends _i12.PageRouteInfo<SinglePostRouteArgs> {
  SinglePostRoute({_i13.Key? key, required int postId})
      : super(name,
            path: ':postId',
            args: SinglePostRouteArgs(key: key, postId: postId),
            rawPathParams: {'postId': postId});

  static const String name = 'SinglePostRoute';
}

class SinglePostRouteArgs {
  const SinglePostRouteArgs({this.key, required this.postId});

  final _i13.Key? key;

  final int postId;
}

/// generated route for [_i10.UsersPage]
class UsersRoute extends _i12.PageRouteInfo<UsersRouteArgs> {
  UsersRoute({_i13.Key? key})
      : super(name, path: '', args: UsersRouteArgs(key: key));

  static const String name = 'UsersRoute';
}

class UsersRouteArgs {
  const UsersRouteArgs({this.key});

  final _i13.Key? key;
}

/// generated route for [_i11.UserProfilePage]
class UserProfileRoute extends _i12.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({_i13.Key? key, required int userId})
      : super(name,
            path: ':userId',
            args: UserProfileRouteArgs(key: key, userId: userId),
            rawPathParams: {'userId': userId});

  static const String name = 'UserProfileRoute';
}

class UserProfileRouteArgs {
  const UserProfileRouteArgs({this.key, required this.userId});

  final _i13.Key? key;

  final int userId;
}
