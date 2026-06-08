import 'package:flutter/material.dart';
import 'package:gym_app/_comum/minhas_cores.dart';

InputDecoration getAuthenticationInputDecoration(String label) {
  return InputDecoration(
    labelText: label,

    labelStyle: const TextStyle(color: MinhasCores.cinzaMedio),

    filled: true,
    fillColor: MinhasCores.branco,

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide.none,
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: MinhasCores.vermelhoPrincipal,
        width: 2,
      ),
    ),
  );
}
