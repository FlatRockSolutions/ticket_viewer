import 'package:ticket_viewer/models/ticket.dart';

abstract class TicketState {}

class TicketsLoading extends TicketState {}

class TicketsLoaded extends TicketState {
  final List<Ticket> tickets;
  TicketsLoaded(this.tickets);
}

class TicketsError extends TicketState {
  final String message;
  TicketsError(this.message);
}

class TicketDetailLoading extends TicketState {}

class TicketDetailLoaded extends TicketState {
  final Ticket ticket;
  TicketDetailLoaded(this.ticket);
}

class TicketDetailError extends TicketState {
  final String message;
  TicketDetailError(this.message);
}
