import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TicketDetailScreen extends StatelessWidget {
  final String id;
  const TicketDetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ticket Detail'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
      ),
      body: Text('Detail Screen $id'),
    );
  }
}
