import 'package:country_list_app/bloc/firebase/firebase_cubit.dart';
import 'package:country_list_app/presentation/core/app_widget.dart';
import 'package:country_list_app/presentation/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:country_list_app/bloc/firebase/firebase_state.dart';

class FirebaseApp extends StatelessWidget {
  const FirebaseApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FirebaseCubit()..initialize(),
      child:
          BlocBuilder<FirebaseCubit, FirebaseState>(builder: (context, state) {
        return state.when(
          initial: () => buildMaterialApp(),
          loading: () => buildMaterialApp(),
          loaded: () => MyApp(),
          error: () => MaterialApp(
            title: 'Countries',
            debugShowCheckedModeBanner: false,
            theme: lightTheme(),
            darkTheme: darkTheme(),
            home: Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.warning,
                      size: 50, color: Theme.of(context).errorColor),
                  Center(
                    child: Text(
                      "Something went wrong",
                      style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Theme.of(context).errorColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  MaterialApp buildMaterialApp() {
    return MaterialApp(
      title: 'Countries',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      home: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
