import 'package:flutter/material.dart';

import 'responsive/responsive_extension.dart';

/// Root application widget.
/// This temporary screen verifies that the project foundation,

class PushupAiCoachApp extends StatelessWidget {
  const PushupAiCoachApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pushup AI Coach',
      home: const FoundationPage(),
    );
  }
}

/// Temporary foundation page displayed during the initial
/// architecture setup phase.
class FoundationPage extends StatelessWidget {
  const FoundationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final r = context.responsive;

    return Scaffold(
      backgroundColor: const Color(0xFF070B10),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: r.space(24)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo container
                Container(
                  width: r.widthValue(110),
                  height: r.widthValue(110),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF97316).withValues(alpha: 0.12),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFFF97316).withValues(alpha: 0.30),
                    ),
                  ),
                  child: Icon(
                    Icons.fitness_center,
                    size: r.icon(44),
                    color: const Color(0xFFF97316),
                  ),
                ),

                SizedBox(height: r.space(28)),

                // App title
                Text(
                  'Pushup AI Coach',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: r.font(30),
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.4,
                  ),
                ),

                SizedBox(height: r.space(12)),

                // Subtitle
                Text(
                  'Production foundation initialized',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.70),
                    fontSize: r.font(16),
                    height: 1.5,
                  ),
                ),

                SizedBox(height: r.space(36)),

                // Status chip
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: r.space(16),
                    vertical: r.space(10),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(r.radius(20)),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.08),
                    ),
                  ),
                  child: Text(
                    'Responsive engine active',
                    style: TextStyle(
                      color: const Color(0xFFFB923C),
                      fontSize: r.font(14),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}