import 'package:flutter/material.dart';
import 'package:gym_app/_comum/minhas_cores.dart';
import 'package:gym_app/components/campos_decoracao.dart';

class AutenticacaoTela extends StatefulWidget {
  const AutenticacaoTela({super.key});

  @override
  State<AutenticacaoTela> createState() => _AutenticacaoTelaState();
}

class _AutenticacaoTelaState extends State<AutenticacaoTela> {
  bool queroEntrar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      body: Stack(
        children: [
          // Fundo
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.topRight,
                colors: [
                  MinhasCores.textoPrimario,
                  MinhasCores.vermelhoFraquinho2,
                ],
              ),
            ),
          ),

          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 40),

                    // Logo
                    Center(
                      child: Image.asset('assets/GymTask.png', height: 250),
                    ),

                    const SizedBox(height: 30),

                    // Nome (apenas cadastro)
                    if (!queroEntrar) ...[
                      TextFormField(
                        decoration: getAuthenticationInputDecoration('Nome'),
                      ),
                      const SizedBox(height: 16),
                    ],

                    // Email
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(color: MinhasCores.preto),
                      decoration: _inputDecoration('E-mail'),
                    ),

                    const SizedBox(height: 16),

                    // Senha
                    TextFormField(
                      decoration: getAuthenticationInputDecoration('Senha'),
                    ),

                    // Confirmar senha (apenas cadastro)
                    if (!queroEntrar) ...[
                      const SizedBox(height: 16),

                      TextFormField(
                        decoration: getAuthenticationInputDecoration(
                          'Confirmar Senha',
                        ),
                      ),
                    ],

                    const SizedBox(height: 24),

                    // Botão principal
                    ElevatedButton(
                      onPressed: () {
                        // Login ou cadastro
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MinhasCores.botaoPrimario,
                        foregroundColor: MinhasCores.branco,
                        elevation: 5,
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        queroEntrar ? 'Entrar' : 'Cadastrar',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    Divider(color: MinhasCores.cinzaClaro),

                    // Alternar tela
                    TextButton(
                      onPressed: () {
                        setState(() {
                          queroEntrar = !queroEntrar;
                        });
                      },
                      child: Text(
                        queroEntrar
                            ? 'Ainda não tem uma conta? Cadastre-se'
                            : 'Já possui uma conta? Entrar',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: MinhasCores.vermelhoPrincipal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration _inputDecoration(String label) {
    return InputDecoration(
      labelText: label,

      labelStyle: const TextStyle(color: MinhasCores.cinzaMedio),

      filled: true,
      fillColor: Colors.white,

      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide.none,
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(
          color: MinhasCores.vermelhoPrincipal,
          width: 2,
        ),
      ),
    );
  }
}
