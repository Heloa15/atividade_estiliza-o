import 'package:flutter/material.dart';
import '/root/pallet.dart';
import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacity;
  late Animation<Offset> _slide;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _opacity = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _slide = Tween<Offset>(
      begin: const Offset(0, 0.4), // vem de baixo
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  void _irParaHome() async {
    await _controller.reverse();

    if (!mounted) return;

    Navigator.push(context, MaterialPageRoute(builder: (_) => const Home()));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.p1,
      appBar: AppBar(title: const Text("Funcionários")),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, _) {
            return SlideTransition(
              position: _slide,
              child: FadeTransition(
                opacity: _opacity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.p2,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.p3.withValues(alpha: 0.5),
                            blurRadius: 30,
                            spreadRadius: 8,
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.people_rounded,
                        size: 80,
                        color: AppColors.textoClaro,
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      "Gestão de Funcionários",
                      style: TextStyle(
                        color: AppColors.textoClaro,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 48),
                    ElevatedButton.icon(
                      onPressed: _irParaHome,
                      icon: const Icon(Icons.login_rounded),
                      label: const Text("Entrar"),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
