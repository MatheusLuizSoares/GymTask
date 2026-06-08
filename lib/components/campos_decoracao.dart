import 'package:flutter/material.dart';
import 'package:gym_app/_comum/minhas_cores.dart';

// Função responsável por criar o estilo padrão
// dos campos de autenticação (E-mail, Senha, Nome etc.)
InputDecoration getAuthenticationInputDecoration(String label) {
  return InputDecoration(
    // Texto que aparece como rótulo do campo
    labelText: label,

    // Estilo do texto do rótulo
    labelStyle: const TextStyle(color: MinhasCores.cinzaMedio),

    // Indica que o campo terá uma cor de fundo
    filled: true,

    // Cor de fundo do campo
    fillColor: MinhasCores.branco,

    // Borda padrão quando o campo NÃO está selecionado
    border: OutlineInputBorder(
      // Arredonda os cantos da borda
      borderRadius: BorderRadius.circular(16),

      // Remove a linha da borda padrão
      borderSide: BorderSide.none,
    ),

    // Borda exibida quando o usuário clica no campo
    focusedBorder: OutlineInputBorder(
      // Mantém os cantos arredondados
      borderRadius: BorderRadius.circular(16),

      // Define a borda vermelha quando o campo recebe foco
      borderSide: const BorderSide(
        color: MinhasCores.vermelhoPrincipal,
        width: 2,
      ),
    ),
  );
}
