import 'package:demo_ui/core/service/navigation/routes/routes.dart';
import 'package:demo_ui/feature/email_confirmation_page.dart';
import 'package:demo_ui/feature/forgot_password_page.dart';
import 'package:demo_ui/feature/reset_password_page.dart';
import 'package:demo_ui/feature/signin_page.dart';
import 'package:demo_ui/feature/signup_page.dart';
import 'package:demo_ui/feature/update_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyRouterConfig {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: Routes.login,
        path: '/',
        pageBuilder: (contexct, state) {
          return MaterialPage(child: Login());
        },
      ),
      GoRoute(
        name: Routes.forgetPassword,
        path: '/forgetPassword',
        pageBuilder: (contexct, state) {
          return MaterialPage(child: ForgotPassword());
        },
       
      ),
      GoRoute(
        name: Routes.emailConfirmation,
        path: '/emailConfirmation/:email/:previousPage',
        pageBuilder: (contexct, state) {
          return MaterialPage(
              child: EmailConfirmation(
            email: state.pathParameters['email']!,
            previousPage: state.pathParameters['previousPage']!,
          ));
        },
      ),
      GoRoute(
        name: Routes.signup,
        path: '/signup',
        pageBuilder: (contexct, state) {
          return const MaterialPage(child: Signup());
        },
      ),
      GoRoute(
        name: Routes.profile,
        path: '/profile',
        pageBuilder: (contexct, state) {
          return MaterialPage(child: UpdateProfile());
        },
      ),
      GoRoute(
        name: Routes.resetPassword,
        path: '/resetPassword/:email',
        pageBuilder: (contexct, state) {
          return MaterialPage(
              child: ResetPassword(email: state.pathParameters['email']!));
        },
      )
    ],
  );
}