import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/ticket_api.dart';
import 'ticket_event.dart';
import 'ticket_state.dart';

class TicketBloc extends Bloc<TicketEvent, TicketState> {
  final TicketApi ticketApi;

  TicketBloc(this.ticketApi) : super(TicketsLoading()) {
    on<LoadTicketsEvent>((event, emit) async {
      try {
        final tickets = await ticketApi.fetchTickets();
        emit(TicketsLoaded(tickets));
      } catch (e) {
        emit(TicketsError("Failed to load tickets"));
      }
    });

    on<LoadTicketDetailEvent>((event, emit) async {
      try {
        emit(TicketDetailLoading());
        final ticket = await ticketApi.fetchTicket(int.parse(event.id));
        emit(TicketDetailLoaded(ticket));
      } catch (e) {
        emit(TicketDetailError("Failed to load ticket details"));
      }
    });
  }
}
