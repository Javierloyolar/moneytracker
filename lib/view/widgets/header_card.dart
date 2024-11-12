import 'package:flutter/material.dart';

class HeaderCard extends StatelessWidget {
  final String title;
  final double amount;
  final Widget icon;

  const HeaderCard({
    super.key,
    required this.title,
    required this.amount,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final formattedAmount = amount < 0
        ? '-\$ ${amount.abs().toStringAsFixed(2)}'
        : '\$ ${amount.toStringAsFixed(2)}';

    return Expanded(
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon,
                  Text(title),
                ],
              ),
              Text(formattedAmount),
            ],
          ),
        ),
      ),
    );
  }
}
