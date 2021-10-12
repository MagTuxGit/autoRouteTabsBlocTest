// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../home_page.dart' as _i1;
import '../posts/posts_page.dart' as _i5;
import '../posts/posts_wrapper_page.dart' as _i2;
import '../posts/single_post_page.dart' as _i6;
import '../settings/settings_page.dart' as _i4;
import '../users/user_profile_page.dart' as _i8;
import '../users/users_page.dart' as _i7;
import '../users/users_wrapper_page.dart' as _i3;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    PostsRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PostsWrapperPage());
    },
    UsersRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.UsersWrapperPage());
    },
    SettingsRouter.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SettingsPage());
    },
    PostsRoute.name: (routeData) {
      final args = routeData.argsAs<PostsRouteArgs>(
          orElse: () => const PostsRouteArgs());
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.PostsPage(key: args.key));
    },
    SinglePostRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<SinglePostRouteArgs>(
          orElse: () =>
              SinglePostRouteArgs(postId: pathParams.getInt('postId')));
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.SinglePostPage(key: args.key, postId: args.postId));
    },
    UsersRoute.name: (routeData) {
      final args = routeData.argsAs<UsersRouteArgs>(
          orElse: () => const UsersRouteArgs());
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.UsersPage(key: args.key));
    },
    UserProfileRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<UserProfileRouteArgs>(
          orElse: () =>
              UserProfileRouteArgs(userId: pathParams.getInt('userId')));
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.UserProfilePage(key: args.key, userId: args.userId));
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(HomeRoute.name, path: '/', children: [
          _i9.RouteConfig(PostsRouter.name, path: 'posts', children: [
            _i9.RouteConfig(PostsRoute.name, path: ''),
            _i9.RouteConfig(SinglePostRoute.name, path: ':postId'),
            _i9.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ]),
          _i9.RouteConfig(UsersRouter.name, path: 'users', children: [
            _i9.RouteConfig(UsersRoute.name, path: ''),
            _i9.RouteConfig(UserProfileRoute.name, path: ':userId'),
            _i9.RouteConfig('*#redirect',
                path: '*', redirectTo: '', fullMatch: true)
          ]),
          _i9.RouteConfig(SettingsRouter.name, path: 'settings')
        ])
      ];
}

/// generated route for [_i1.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for [_i2.PostsWrapperPage]
class PostsRouter extends _i9.PageRouteInfo<void> {
  const PostsRouter({List<_i9.PageRouteInfo>? children})
      : super(name, path: 'posts', initialChildren: children);

  static const String name = 'PostsRouter';
}

/// generated route for [_i3.UsersWrapperPage]
class UsersRouter extends _i9.PageRouteInfo<void> {
  const UsersRouter({List<_i9.PageRouteInfo>? children})
      : super(name, path: 'users', initialChildren: children);

  static const String name = 'UsersRouter';
}

/// generated route for [_i4.SettingsPage]
class SettingsRouter extends _i9.PageRouteInfo<void> {
  const SettingsRouter() : super(name, path: 'settings');

  static const String name = 'SettingsRouter';
}

/// generated route for [_i5.PostsPage]
class PostsRoute extends _i9.PageRouteInfo<PostsRouteArgs> {
  PostsRoute({_i10.Key? key})
      : super(name, path: '', args: PostsRouteArgs(key: key));

  static const String name = 'PostsRoute';
}

class PostsRouteArgs {
  const PostsRouteArgs({this.key});

  final _i10.Key? key;
}

/// generated route for [_i6.SinglePostPage]
class SinglePostRoute extends _i9.PageRouteInfo<SinglePostRouteArgs> {
  SinglePostRoute({_i10.Key? key, required int postId})
      : super(name,
            path: ':postId',
            args: SinglePostRouteArgs(key: key, postId: postId),
            rawPathParams: {'postId': postId});

  static const String name = 'SinglePostRoute';
}

class SinglePostRouteArgs {
  const SinglePostRouteArgs({this.key, required this.postId});

  final _i10.Key? key;

  final int postId;
}

/// generated route for [_i7.UsersPage]
class UsersRoute extends _i9.PageRouteInfo<UsersRouteArgs> {
  UsersRoute({_i10.Key? key})
      : super(name, path: '', args: UsersRouteArgs(key: key));

  static const String name = 'UsersRoute';
}

class UsersRouteArgs {
  const UsersRouteArgs({this.key});

  final _i10.Key? key;
}

/// generated route for [_i8.UserProfilePage]
class UserProfileRoute extends _i9.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({_i10.Key? key, required int userId})
      : super(name,
            path: ':userId',
            args: UserProfileRouteArgs(key: key, userId: userId),
            rawPathParams: {'userId': userId});

  static const String name = 'UserProfileRoute';
}

class UserProfileRouteArgs {
  const UserProfileRouteArgs({this.key, required this.userId});

  final _i10.Key? key;

  final int userId;
}
