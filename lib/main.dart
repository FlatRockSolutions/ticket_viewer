import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_viewer/screens/ticket_detail_screen.dart';
import 'package:ticket_viewer/screens/ticket_list_screen.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const TicketListScreen()),
    GoRoute(
        path: '/ticket/:id',
        builder: (context, state) =>
            TicketDetailScreen(id: state.pathParameters['id'] ?? '')),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Ticket Viewer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
