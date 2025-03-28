import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TicketListScreen extends StatelessWidget {
  const TicketListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ticket List'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: Text('Ticket $index'),
          onTap: () => context.go('/ticket/$index'),
        ),
      ),
    );
  }
}
