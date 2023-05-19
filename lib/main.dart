import 'package:flutter/material.dart';
import 'package:techfriar/app/DI.dart';
import 'package:techfriar/app/auth_bloc/auth_bloc.dart';
import 'package:techfriar/app/trending_bloc/trending_bloc.dart';
import 'package:techfriar/data/login/repository.dart';
import 'package:techfriar/data/trending/repository.dart';
import 'package:techfriar/presentation/login/screen_login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setUpDep();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                AuthBloc(repository: getIt<LoginRepository>())),
        BlocProvider(
            create: (context) => TrendingBloc(getIt<TrendingRepository>()))
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
