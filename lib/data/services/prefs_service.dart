import 'package:shared_preferences/shared_preferences.dart';

class PrefsService {
  static PrefsService? instance;

  PrefsService._();

  factory PrefsService() => instance ??= PrefsService._();

  Future<SharedPreferences> _prefs() => SharedPreferences.getInstance();

  Future<bool> isLoggedIn() async {
    final prefs = await _prefs();
    return prefs.getBool('isLoggedIn') ?? false;
  }

  Future<bool> login() async {
    final prefs = await _prefs();
    return prefs.setBool('isLoggedIn', true);
  }

  Future<bool> logout() async {
    final prefs = await _prefs();
    return prefs.setBool('isLoggedIn', false);
  }
}
