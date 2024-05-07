import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.errorMessage});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errorMessage , style: const TextStyle(color: Colors.red, fontSize: 20),
    ),
    );
  }
}
