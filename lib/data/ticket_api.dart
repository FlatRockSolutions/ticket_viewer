import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:dio/dio.dart';
import '../models/ticket.dart';

class TicketApi {
  final Dio _dio;

  TicketApi(this._dio);

  Future<List<Ticket>> fetchTickets() async {
    try {
      final response = await _dio.get('asset://lib/data/mock_tickets.json');
      final List<dynamic> data = json.decode(response.data);

      return data.map((ticket) => Ticket.fromJson(ticket)).toList();
    } catch (e) {
      throw Exception("Failed to load tickets: $e");
    }
  }

  Future<Ticket> fetchTicket(int id) async {
    try {
      final response = await _dio.get('asset://lib/data/mock_tickets.json');
      final List<dynamic> data = json.decode(response.data);

      final ticket = data.firstWhere(
        (ticket) => ticket['id'] == id,
        orElse: () => throw Exception('Ticket not found'),
      );

      return Ticket.fromJson(ticket);
    } catch (e) {
      throw Exception("Failed to load ticket: $e");
    }
  }
}
