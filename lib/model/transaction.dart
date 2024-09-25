class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final String phone;
  final String reason;
  final bool status;

  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
    required this.phone,
    required this.reason,
    required this.status,
  });
}

// Sample data
final List<Transaction> transactions = [
  Transaction(
    id: 't1',
    title: 'Groceries',
    amount: 50.75,
    date: DateTime.now().subtract(const Duration(days: 1)),
    phone: '123-456-7890',
    reason: 'Weekly grocery shopping',
    status: true, // Success
  ),
  Transaction(
    id: 't2',
    title: 'Electricity Bill',
    amount: 75.00,
    date: DateTime.now().subtract(const Duration(days: 2)),
    phone: '098-765-4321',
    reason: 'Monthly electricity bill payment',
    status: false, // Failed
  ),
  Transaction(
    id: 't3',
    title: 'Internet Bill',
    amount: 30.00,
    date: DateTime.now().subtract(const Duration(days: 3)),
    phone: '234-567-8901',
    reason: 'Monthly internet bill payment',
    status: true, // Success
  ),
  Transaction(
    id: 't4',
    title: 'New Shoes',
    amount: 90.99,
    date: DateTime.now().subtract(const Duration(days: 4)),
    phone: '345-678-9012',
    reason: 'Purchased a new pair of shoes',
    status: true, // Success
  ),
  Transaction(
    id: 't5',
    title: 'Movie Tickets',
    amount: 25.50,
    date: DateTime.now().subtract(const Duration(days: 5)),
    phone: '456-789-0123',
    reason: 'Watched a movie with friends',
    status: false, // Failed
  ),
  Transaction(
    id: 't6',
    title: 'Dinner',
    amount: 40.80,
    date: DateTime.now().subtract(const Duration(days: 6)),
    phone: '567-890-1234',
    reason: 'Dinner at a restaurant',
    status: true, // Success
  ),
  Transaction(
    id: 't7',
    title: 'Gym Membership',
    amount: 60.00,
    date: DateTime.now().subtract(const Duration(days: 7)),
    phone: '678-901-2345',
    reason: 'Monthly gym membership fee',
    status: true, // Success
  ),
  Transaction(
    id: 't8',
    title: 'Book Purchase',
    amount: 15.20,
    date: DateTime.now().subtract(const Duration(days: 8)),
    phone: '789-012-3456',
    reason: 'Purchased a book online',
    status: false, // Failed
  ),
  Transaction(
    id: 't9',
    title: 'Coffee',
    amount: 5.50,
    date: DateTime.now().subtract(const Duration(days: 9)),
    phone: '890-123-4567',
    reason: 'Coffee with a friend',
    status: true, // Success
  ),
  Transaction(
    id: 't10',
    title: 'Gift',
    amount: 100.00,
    date: DateTime.now().subtract(const Duration(days: 10)),
    phone: '901-234-5678',
    reason: 'Birthday gift for a friend',
    status: true, // Success
  ),
];
