import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

/// An example showing how to drive a StateMachine via a trigger and number
/// input.
class RiveIcon extends StatefulWidget {
  const RiveIcon({
    Key? key,
    required this.name,
    required this.animation,
    required this.height,
    required this.width,
  }) : super(key: key);

  final String name;
  final String animation;
  final double height;
  final double width;

  @override
  State<RiveIcon> createState() => _RiveIconState();
}

class _RiveIconState extends State<RiveIcon> {
  /// Tracks if the animation is playing by whether controller is running.
  bool get isPlaying => _controller?.isActive ?? false;

  Artboard? _riveArtboard;
  RiveAnimationController? _controller;
  SMIInput<bool>? _start;
  SMIInput<double>? _progress;

  @override
  void initState() {
    super.initState();
    _loadRiveFile();
  }

  Future<void> _loadRiveFile() async {
    final bytes = await rootBundle.load('assets/rive/icons.riv');
    final file = RiveFile.import(bytes);

    final artboard = file.artboardByName(widget.name);
    setState(() => _riveArtboard = artboard!
      ..addController(_controller = SimpleAnimation(widget.animation)));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: _riveArtboard == null
          ? const SizedBox()
          : Rive(
              artboard: _riveArtboard!,
            ),
    );
  }
}
