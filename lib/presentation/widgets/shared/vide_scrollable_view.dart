import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.yellow, Colors.orange],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: const Center(
            child: Text(
              'Gradiente Vertical',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.purple])),
          child: const Center(
            child: Text(
              'Gradiente Horizontal',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
        ),
        Container(
          color: Colors.greenAccent,
          child: const Center(
            child: Text(
              'Color Solido',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}
