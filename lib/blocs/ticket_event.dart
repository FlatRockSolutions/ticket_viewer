abstract class TicketEvent {}

class LoadTicketsEvent extends TicketEvent {}

class LoadTicketDetailEvent extends TicketEvent {
  final String id;
  LoadTicketDetailEvent({required this.id});
}
