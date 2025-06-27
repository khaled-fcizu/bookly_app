import 'package:bookly_app/features/Home/presentation/view/book_details_view.dart';
import 'package:bookly_app/features/Home/presentation/view/home_view.dart';
import 'package:bookly_app/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String kHomeView = '/homeView';
  static String kBookDetailsView = '/bookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: '/bookDetailsView',
        builder: (context, state) => BookDetailsView(),
      ),
    ],
  );
}
