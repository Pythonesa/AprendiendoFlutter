import 'package:flutter/material.dart';

class VideoBackground extends StatelessWidget {
  const VideoBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned.fill(
      child: DecoratedBox(decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            Colors.black87,
          ],
          stops: [
            0.5,
            1.0
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        )
      ))
    );
  }
}