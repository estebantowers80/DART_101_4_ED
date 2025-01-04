import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tracking_eela/pages/loading_page.dart';
import 'package:tracking_eela/src/core/ui/app_theme.dart';
import 'package:tracking_eela/src/features/gps/bloc/gps_bloc.dart';
import 'package:tracking_eela/src/features/map/blocs/cubit/map_cubit.dart';
import 'package:tracking_eela/src/features/map/blocs/location/location_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //aqui configuramos el thema que esta en el archivo app_theme
    return MaterialApp(
      title: 'Material App',
      // todos los widget que esten bajo el blocProvider pueden usar el bloC GpsBloc
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            // el add evento es emejor agregarlo aqui por que si lo ponemos en la otra pantalla se vuelve a llamar varias veces
            create: (context) => GpsBloc()
              ..add(GpsInitialStatusEvent())
              ..add(ChangeGpsStatus()),
          ),
          BlocProvider(
            // lazy: false,
            create: (context) => LocationBloc()
              ..add(
                InitialLocationEvent(),
              )
              ..add(StartTrackingUserEvent()),
          ),

          BlocProvider(
            create: (context) => MapCubit(),
          ),
        ],
        child: const LoadingPage(),
      ),
      theme: AppTheme.light,
    );
  }
}
