import 'package:concertbooker/Seat.dart';

class Concert{
  int id;
  String name;
  String location;
  DateTime date;
  int rows;
  int columns;
  List<Seat> seats;

  Concert({
    required this.id,
    required this.name,
    required this.location,
    required this.date,
    required this.rows,
    required this.columns,
    required this.seats
  });

}