import 'package:flutter/material.dart';
import 'package:moneytracker/view/componentes/add_transaction_dialog.dart';
import 'package:moneytracker/view/componentes/home_header.dart';
import 'package:moneytracker/view/componentes/transactions_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: const SafeArea(
        bottom: false,
        child: Column(children: [HomeHeader(), TransactionsList()]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return const AddTransactionDialog();
            },
          );
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
