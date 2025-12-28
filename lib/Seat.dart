class Seat {
  final int row;
  final int column;
  bool isBooked;

  Seat({
    required this.row,
    required this.column,
    this.isBooked = false,
  });
}
