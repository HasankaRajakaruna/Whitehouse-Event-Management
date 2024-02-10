
class Pair {
  final String sender;
  final String reciever;
  final int salary;

  Pair({
    this.sender,
    this.reciever,
    this.salary,
  });

  Map<String, dynamic> toJson() =>
      {
        'sender': sender,
        'reciever': reciever,
        'salary': salary
      };

}