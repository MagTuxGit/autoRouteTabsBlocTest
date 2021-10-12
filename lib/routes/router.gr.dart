// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i9;

import '../home_page.dart' as _i1;
import '../posts/posts_page.dart' as _i5;
import '../posts/posts_wrapper_page.dart' as _i2;
import '../posts/single_post_page.dart' as _i6;
import '../settings/settings_page.dart' as _i4;
import '../users/user_profile_page.dart' as _i8;
import '../users/users_page.dart' as _i7;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    PostsRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PostsWrapperPage());
    },
    UsersRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    SettingsRouter.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SettingsPage());
    },
    PostsRoute.name: (routeData) {
      final args = routeData.argsAs<PostsRouteArgs>(
          orElse: () => const PostsRouteArgs());
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.PostsPage(key: args.key));
    },
    SinglePostRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<SinglePostRouteArgs>(
          orElse: () =>
              SinglePostRouteArgs(postId: pathParams.getInt('postId')));
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.SinglePostPage(key: args.key, postId: args.postId));
    },
    UsersRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.UsersPage());
    },
    UserProfileRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<UserProfileRouteArgs>(
          orElse: () =>
              UserProfileRouteArgs(userId: pathParams.getInt('userId')));
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.UserProfilePage(key: args.key, userId: args.userId));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomeRoute.name, path: '/', children: [
          _i3.RouteConfig(PostsRouter.name, path: 'posts', children: [
            _i3.RouteConfig(PostsRoute.name, path: ''),
            _i3.RouteConfig(SinglePostRoute.name, path: ':postId'),
            _i3.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ]),
          _i3.RouteConfig(UsersRouter.name, path: 'users', children: [
            _i3.RouteConfig(UsersRoute.name, path: ''),
            _i3.RouteConfig(UserProfileRoute.name, path: ':userId'),
            _i3.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ]),
          _i3.RouteConfig(SettingsRouter.name, path: 'settings')
        ])
      ];
}

/// generated route for [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i2.PostsWrapperPage]
class PostsRouter extends _i3.PageRouteInfo<void> {
  const PostsRouter({List<_i3.PageRouteInfo>? children})
      : super(name, path: 'posts', initialChildren: children);

  static const String name = 'PostsRouter';
}

/// generated route for [_i3.EmptyRouterPage]
class UsersRouter extends _i3.PageRouteInfo<void> {
  const UsersRouter({List<_i3.PageRouteInfo>? children})
      : super(name, path: 'users', initialChildren: children);

  static const String name = 'UsersRouter';
}

/// generated route for [_i4.SettingsPage]
class SettingsRouter extends _i3.PageRouteInfo<void> {
  const SettingsRouter() : super(name, path: 'settings');

  static const String name = 'SettingsRouter';
}

/// generated route for [_i5.PostsPage]
class PostsRoute extends _i3.PageRouteInfo<PostsRouteArgs> {
  PostsRoute({_i9.Key? key})
      : super(name, path: '', args: PostsRouteArgs(key: key));

  static const String name = 'PostsRoute';
}

class PostsRouteArgs {
  const PostsRouteArgs({this.key});

  final _i9.Key? key;
}

/// generated route for [_i6.SinglePostPage]
class SinglePostRoute extends _i3.PageRouteInfo<SinglePostRouteArgs> {
  SinglePostRoute({_i9.Key? key, required int postId})
      : super(name,
            path: ':postId',
            args: SinglePostRouteArgs(key: key, postId: postId),
            rawPathParams: {'postId': postId});

  static const String name = 'SinglePostRoute';
}

class SinglePostRouteArgs {
  const SinglePostRouteArgs({this.key, required this.postId});

  final _i9.Key? key;

  final int postId;
}

/// generated route for [_i7.UsersPage]
class UsersRoute extends _i3.PageRouteInfo<void> {
  const UsersRoute() : super(name, path: '');

  static const String name = 'UsersRoute';
}

/// generated route for [_i8.UserProfilePage]
class UserProfileRoute extends _i3.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({_i9.Key? key, required int userId})
      : super(name,
            path: ':userId',
            args: UserProfileRouteArgs(key: key, userId: userId),
            rawPathParams: {'userId': userId});

  static const String name = 'UserProfileRoute';
}

class UserProfileRouteArgs {
  const UserProfileRouteArgs({this.key, required this.userId});

  final _i9.Key? key;

  final int userId;
}
