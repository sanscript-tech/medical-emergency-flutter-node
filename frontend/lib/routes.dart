import 'package:flutter/material.dart';

import './pages/dashboard_page.dart';
import './pages/login_page.dart';
import './pages/reset_password.dart';

Map<String,Widget Function(BuildContext)> routes={
  Dashboard.dashboardId:(context) => Dashboard(),
  LoginPage.loginPageId:(context) => LoginPage(),
  ResetPassword.resetPassword:(context) => ResetPassword(),



};