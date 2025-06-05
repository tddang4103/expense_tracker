import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(this.expensesItem, {super.key});

  final Expense expensesItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          children: [
            Text(expensesItem.title),
            Row(
              children: [
                Text(expensesItem.amount.toStringAsFixed(2)),
                const Spacer(),
                Row(
                  children: [
                    Icon(Icons.alarm),
                    const SizedBox(width: 8),
                    Text(expensesItem.date.toString()),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
