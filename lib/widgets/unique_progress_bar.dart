import 'dart:math' as math;
import 'package:flutter/material.dart';

class UniqueProgressBar extends StatefulWidget {
  final double progress; // 0.0 to 1.0

  const UniqueProgressBar({
    super.key,
    required this.progress,
  });

  @override
  State<UniqueProgressBar> createState() => _UniqueProgressBarState();
}

class _UniqueProgressBarState extends State<UniqueProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return TweenAnimationBuilder<double>(
          tween: Tween(
            begin: 0,
            end: widget.progress,
          ),
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeOutCubic,
          builder: (context, value, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Uploading...",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "${(value * 100).toInt()}%",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                Container(
                  height: 16,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Stack(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 800),
                            curve: Curves.easeOutCubic,
                            width: constraints.maxWidth * value,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment(
                                  -1 + math.sin(controller.value * math.pi * 2),
                                  0,
                                ),
                                end: const Alignment(1, 0),
                                colors: const [
                                  Colors.deepPurple,
                                  Colors.pink,
                                  Colors.orange,
                                ],
                              ),
                            ),
                          ),

                          // Moving shine effect
                          if (value > 0)
                            Positioned(
                              left: constraints.maxWidth * value - 30,
                              top: 2,
                              child: Container(
                                width: 12,
                                height: 12,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white54,
                                      blurRadius: 10,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}