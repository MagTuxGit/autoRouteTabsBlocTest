import 'dart:async';

import 'package:auto_route_test/data/services/prefs_service.dart';
import 'package:rxdart/rxdart.dart';

class UserService {
  final PrefsService _prefsService;

  UserService(this._prefsService) {
    _ensureUser();
  }

  final _loggedInState = BehaviorSubject<LoggedInState>()
    ..add(LoggedInState.undefinedStart);

  Stream<LoggedInState> isLoggedInState() => _loggedInState.distinct();

  bool get isLoggedIn => _loggedInState.value == LoggedInState.loggedIn;

  void dispose() {
    _loggedInState.close();
  }

  Future<void> login() async {
    _userDidLogin();
  }

  Future<void> _userDidLogin() async {
    await _prefsService.login();
    await _ensureUser();
  }

  Future<void> logOut() async {
    await _prefsService.logout();
    _loggedInState.add(LoggedInState.loggedOut);
  }

  Future<void> _ensureUser() async {
    final isLoggedIn = await _prefsService.isLoggedIn();

    _loggedInState.add(isLoggedIn ? LoggedInState.loggedIn : LoggedInState.loggedOut);
  }
}

enum LoggedInState {
  undefinedStart,
  loggedIn,
  loggedOut,
}
