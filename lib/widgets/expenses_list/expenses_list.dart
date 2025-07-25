import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget{
     const ExpensesList({super.key,required this.expenses,required this.onRemoveExpenses});
     final List<Expense> expenses;
     final void Function(Expense expense) onRemoveExpenses;
      @override
  Widget build(context) {
        return ListView.builder(itemCount:expenses.length ,itemBuilder: (ctx,index) => Dismissible(key: ValueKey(expenses[index]), background: Container(color: Theme.of(context).colorScheme.error,
       margin: EdgeInsets.symmetric( horizontal:Theme.of(context).cardTheme.margin!.horizontal),),onDismissed: (direction) {
          onRemoveExpenses(expenses[index]);
        },child: ExpenseItem(expenses[index])),);
  }
}