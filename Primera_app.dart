import 'package:flutter/material.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PantallaPrincipal());
  }
}

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  bool mostrarTexto = true;
  double tamanoFuente = 24;
  Color colorTexto = Colors.black;

  void aumentarFuente() {
    setState(() {
      tamanoFuente += 2;
    });
  }

  void disminuirFuente() {
    setState(() {
      tamanoFuente = (tamanoFuente - 2).clamp(8.0, double.infinity);
    });
  }

  void mostrar() {
    setState(() {
      mostrarTexto = true;
    });
  }

  void ocultar() {
    setState(() {
      mostrarTexto = false;
    });
  }

  void ponerAzul() {
    setState(() {
      colorTexto = Colors.blue;
    });
  }

  void ponerRojo() {
    setState(() {
      colorTexto = Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            if (mostrarTexto)
              Center(
                child: Text(
                  'HOLA',
                  style: TextStyle(fontSize: tamanoFuente, color: colorTexto),
                ),
              ),
            const SizedBox(height: 40),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: mostrar,
                        child: const Text('MOSTRAR'),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: aumentarFuente,
                        child: const Text('+'),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: ponerAzul,
                        child: const Text('AZUL'),
                      ),
                    ],
                  ),
                  const SizedBox(width: 40),
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: ocultar,
                        child: const Text('OCULTAR'),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: disminuirFuente,
                        child: const Text('-'),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: ponerRojo,
                        child: const Text('ROJO'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
