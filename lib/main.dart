import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticket_viewer/routes/app_router.dart';
import 'package:ticket_viewer/blocs/ticket_bloc.dart';
import 'package:ticket_viewer/data/ticket_api.dart';
import 'package:ticket_viewer/data/asset_interceptor.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final dio = Dio();
    dio.interceptors.add(AssetInterceptor());

    return BlocProvider(
      create: (context) => TicketBloc(TicketApi(dio)),
      child: MaterialApp.router(
        routerConfig: router,
        title: 'Ticket Viewer',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
