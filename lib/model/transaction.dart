class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });
}

// Sample data
final List<Transaction> transactions = [
  Transaction(
    id: 't1',
    title: 'Groceries',
    amount: 50.75,
    date: DateTime.now().subtract(const Duration(days: 1)),
  ),
  Transaction(
    id: 't2',
    title: 'Electricity Bill',
    amount: 75.00,
    date: DateTime.now().subtract(Duration(days: 2)),
  ),
  Transaction(
    id: 't3',
    title: 'Internet Bill',
    amount: 30.00,
    date: DateTime.now().subtract(Duration(days: 3)),
  ),
  Transaction(
    id: 't4',
    title: 'New Shoes',
    amount: 90.99,
    date: DateTime.now().subtract(Duration(days: 4)),
  ),
  Transaction(
    id: 't5',
    title: 'Movie Tickets',
    amount: 25.50,
    date: DateTime.now().subtract(Duration(days: 5)),
  ),
  Transaction(
    id: 't6',
    title: 'Dinner',
    amount: 40.80,
    date: DateTime.now().subtract(Duration(days: 6)),
  ),
  Transaction(
    id: 't7',
    title: 'Gym Membership',
    amount: 60.00,
    date: DateTime.now().subtract(Duration(days: 7)),
  ),
  Transaction(
    id: 't8',
    title: 'Book Purchase',
    amount: 15.20,
    date: DateTime.now().subtract(Duration(days: 8)),
  ),
  Transaction(
    id: 't9',
    title: 'Coffee',
    amount: 5.50,
    date: DateTime.now().subtract(Duration(days: 9)),
  ),
  Transaction(
    id: 't10',
    title: 'Gift',
    amount: 100.00,
    date: DateTime.now().subtract(Duration(days: 10)),
  ),
];
