import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// import '../views/home_view/home_page_view.dart';
// import '../views/login_view/login_page_view.dart';
// import '../views/welcome_view/welcome_page_view.dart';
import '../views/design_view/cart_page_view.dart';
import '../views/home_view/home_page_view.dart';
import '../views/home_view/item_details_page_view.dart';
import '../views/login_view/login_page_view.dart';
import '../views/welcome_view/welcome_page_view.dart';
import '../views/wrapper_view/wrapper_view.dart';

part 'routes.g.dart';

GoRouter router() {
  return GoRouter(
    // navigatorKey: ,

    // refreshListenable: notifier,
    debugLogDiagnostics: true,
    initialLocation: WrapperRoute.path,
    routes: $appRoutes,
    // redirect: notifier.redirect,
  );
}

@TypedGoRoute<WrapperRoute>(path: WrapperRoute.path)
class WrapperRoute extends GoRouteData {
  const WrapperRoute();

  static const path = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const WrapperView();
  }
}

@TypedGoRoute<WelcomePageViewRoute>(path: WelcomePageViewRoute.path)
class WelcomePageViewRoute extends GoRouteData {
  const WelcomePageViewRoute();

  static const path = '/welcome_page_view_path';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return WelcomePageView();
  }
}

@TypedGoRoute<HomePageViewRoute>(path: HomePageViewRoute.path)
class HomePageViewRoute extends GoRouteData {
  const HomePageViewRoute();

  static const path = '/home_page_view_path';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return HomePageView();
  }
}
@TypedGoRoute<LoginPageViewRoute>(path: LoginPageViewRoute.path)
class LoginPageViewRoute extends GoRouteData {
  const LoginPageViewRoute();

  static const path = '/login_page_view_path';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return LoginPageView();
  }
}

@TypedGoRoute<ItemDetailsPageViewRoute>(path: ItemDetailsPageViewRoute.path)
class ItemDetailsPageViewRoute extends GoRouteData {
  const ItemDetailsPageViewRoute();

  static const path = '/item_details_page_view_path';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ItemDetailsPageView();
  }
}
@TypedGoRoute<CartPageViewRoute>(path: ItemDetailsPageViewRoute.path)
class CartPageViewRoute extends GoRouteData {
  const CartPageViewRoute();

  static const path = '/item_details_page_view_path';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CartPageView();
  }
}