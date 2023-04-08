import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_app/core/utils/app_routers.dart';
import 'package:mvvm_app/features/home/data/repo/home_repo.dart';
import 'package:mvvm_app/features/home/presentation/manger/featured_books/featured_books_cubit.dart';
import 'package:mvvm_app/features/home/presentation/manger/newset_books/newset_books_cubit.dart';
import 'core/bloc_observer.dart';
import 'core/constanse.dart';
import 'core/utils/servece_locator.dart';
import 'features/home/data/repo/home_repo_impl.dart';

void main() {
  setupServiceLocator();
  Bloc.observer = MyBlocObserver();
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImp>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(
            getIt.get<HomeRepoImp>(),
          )..fetchNewsetBooks(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
        routerConfig: AppRouter.router,
        // home:const HomeScreen(),
      ),
    );
  }
}
