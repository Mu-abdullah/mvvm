import 'package:go_router/go_router.dart';
import 'package:mvvm_app/features/home/presentation/views/book_details_view.dart';
import 'package:mvvm_app/features/home/presentation/views/home.dart';

import '../../features/search/presentation/views/search_view.dart';
import '../../features/splash_screen/presentation/views/splash_view.dart';

abstract class AppRouter {
    static const splashViewRoute = '/';
    static const homeViewRoute = '/homeView';
    static const bookDetailsViewRoute = '/bookDetailsView';
    static const searchViewRoute = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splashViewRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeViewRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookDetailsViewRoute,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: searchViewRoute,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
