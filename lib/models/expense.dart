import 'package:expense_tracker/widgets/expenses.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter=DateFormat.yMd();

const uuid=Uuid();
enum Category {food,travel,leisure,work}
const categoryIcons={
  Category.food:Icons.lunch_dining,
  Category.leisure:Icons.movie,
  Category.work:Icons.work,
  Category.travel:Icons.flight_takeoff
};
class Expense {
  Expense({required this.title,
  required this.amount,required this.date,required this.category}):id=uuid.v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

    String get formattedDate {
          return formatter.format(date);
    }
}

class ExpenseBucket{
  const ExpenseBucket({
    required this.category,required this.expenses,
  });
   
  ExpenseBucket.forCategory(List<Expense> allExpenses,this.category):expenses=allExpenses.where((expense)=>expense.category==category).toList();

  final Category category;
 final List<Expense> expenses;

  double get totalExpenses{
    double sum=0;
    for(final expense in expenses){
      sum =sum+expense.amount;
    }
    return sum;
  }
}