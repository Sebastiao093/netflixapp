import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/ui/home_page.dart';

import 'ui/series_bloc/series_bloc.dart';

void main() {
  runApp(NetflixApp());
}

class NetflixApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: ( _ ) => SeriesBloc())
    ],
      child: MaterialApp(
        initialRoute: 'HomePage',
        routes: {
          'HomePage': ( _ ) => const HomePage(title: ''),
        },
        theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFF),
        // primaryColor: Color(0x191919),
        // cardColor: Color(0x191919),
        // primaryColorBrightness: Brightness.light,
        // brightness: Brightness.light,
        // focusColor: Color(0x191919),
        // errorColor: Color(0x191919),
        primarySwatch: Colors.grey,
        ),
        home: HomePage(title: '',),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
