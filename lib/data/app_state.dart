import 'package:auto_route_test/data/services/user_service.dart';
import 'package:auto_route_test/routes/router.gr.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';

class AppState extends ChangeNotifier {
  final UserService _userService;
  final AppRouter _appRouter;

  static AppState? _instance;

  factory AppState(UserService loginService, AppRouter appRouter) =>
      _instance ??= AppState._(loginService, appRouter);

  AppState._(this._userService, this._appRouter);

  bool _splashFinished = false;
  bool get splashFinished => _splashFinished;

  void setSplashFinished() {
    _splashFinished = true;
    _listenLoginState();
  }

  void _listenLoginState() {
    _userService.isLoggedInState().listen((loggedInState) {
      switch (loggedInState) {
        case LoggedInState.undefinedStart:
          break;
        case LoggedInState.loggedIn:
          _appRouter.root.replaceAll([const HomeRoute()]);
          break;
        case LoggedInState.loggedOut:
          _appRouter.root.replaceAll([const LoginRoute()]);
          break;
      }
    });
  }

  Future<void> logout() => _userService.logOut();

  Future<void> login() => _userService.login();

  final _appActiveStateSubject = BehaviorSubject<bool>()..add(true);

  Stream<bool> get appActiveState => _appActiveStateSubject.distinct();

  void setAppIsActive(bool active) => _appActiveStateSubject.add(active);
}
