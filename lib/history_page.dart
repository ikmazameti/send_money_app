import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

import 'model/transaction.dart';

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
        appBar: AppBar(
          title: const Text("History"),
          centerTitle: true,
        ),
        body: _buildGroupedHistory(),
      ),
    );
  }

  Widget _buildGroupedHistory() {
    return GroupedListView<Transaction, String>(
      elements: transactions,
      groupBy: (transaction) => DateFormat('MMM yyyy').format(transaction.date),
      // Group by month and year
      groupComparator: (value1, value2) => value2.compareTo(value1),
      itemComparator: (item1, item2) => item1.title.compareTo(item2.title),
      // Sort items by title
      order: GroupedListOrder.DESC,
      useStickyGroupSeparators: false,
      groupSeparatorBuilder: (String value) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(

          onPressed: null,
          child: Text(
            value,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      itemBuilder: (c, transaction) => _transCard(transaction),
    );
  }

  Widget _transCard(Transaction transaction) => Card(
        color: const Color(0xFFFFFFFF),
        elevation: 1.0,
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: SizedBox(
          child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            leading: const Icon(Icons.account_circle),
            title: Text(transaction.title),
            // Accessing the title directly
            subtitle: Text(
              transaction.phone,
              style: const TextStyle(
                color: Color(0xFFE6EAED),
                fontSize: 18,
              ),
            ),

            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      transaction.status
                          ? const Color(0xFFDCF7DF)
                          : const Color(0xFFFBB0AC),
                    ),
                  ),
                  onPressed: null,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    // Makes the row take only the necessary width
                    children: [
                      Icon(
                        transaction.status ? Icons.check_circle : Icons.close,
                        // Check icon for success, close icon for failure
                        color: transaction.status
                            ? const Color(0xFF0E7F1B)
                            : const Color(0xFF77100A),
                      ),
                      const SizedBox(width: 8.0),
                      // Adds space between the icon and the text
                      Text(
                        transaction.status ? "Success" : "Failed",
                        style: TextStyle(
                          color: transaction.status
                              ? const Color(0xFF0E7F1B)
                              : const Color(0xFF77100A),
                        ),
                      ),
                    ],
                  ),
                ),
                Text("GHS ${transaction.amount}"),
              ],
            ),

            // Displaying the amount
          ),
        ),
      );
}
