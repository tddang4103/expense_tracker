import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expensesList,
    required this.onRemoveExpenses,
  });

  final List<Expense> expensesList;
  final void Function(Expense expense) onRemoveExpenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expensesList.length,
      itemBuilder:
          (context, index) => Dismissible(
            key: ValueKey(expensesList[index]),
            onDismissed: (direction) => onRemoveExpenses(expensesList[index]),
            child: ExpensesItem(expensesList[index]),
          ),
    );
  }
}
