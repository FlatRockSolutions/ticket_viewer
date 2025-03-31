import 'package:go_router/go_router.dart';
import 'package:ticket_viewer/screens/ticket_detail_screen.dart';
import 'package:ticket_viewer/screens/ticket_list_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const TicketListScreen()),
    GoRoute(
        path: '/ticket/:id',
        builder: (context, state) =>
            TicketDetailScreen(id: state.pathParameters['id'] ?? '')),
  ],
);