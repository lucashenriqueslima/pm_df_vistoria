// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const login = _Paths.login;
  static const dashboard = _Paths.dashboard;
}

abstract class _Paths {
  _Paths._();
  static const login = '/login';
  static const dashboard = '/dashboard';
}
