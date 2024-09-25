import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'model/transaction.dart'; // Ensure this file has your Transaction class and sample data

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Add',
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text("History"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: transactions.length,
          itemBuilder: (context, index) {
            final data = transactions[index];
            String previousDate = index > 0
                ? DateFormat('MMM yyyy').format(transactions[index - 1].date)
                : '';
            String date = DateFormat('MMM yyyy').format(data.date);

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (date != previousDate)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Center(
                      child: Text(
                        date,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: _transCard(data), // Pass the data to _transCard
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  // Update _transCard to accept the Transaction data
  Widget _transCard(Transaction data) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  DateFormat.jm().format(data.date),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'GHS ${data.amount.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(Icons.description),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    data.title,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
 
