import 'package:flappybird/game/state/parallax_state.dart';
import 'package:flappybird/wigets/floor.dart';
import 'package:flutter/widgets.dart';

class Ground extends StatelessWidget {
  const Ground(this.state);

  final ParallaxState state;

  @override
  Widget build(BuildContext context) => Positioned(
        bottom: state.y,
        child: Container(
          height: state.height,
          width: state.width,
          child: Stack(
            children: [
              Floor(
                x: state.x,
                height: state.height,
                width: state.width,
              ),
              Floor(
                x: state.x + state.width + state.gap,
                height: state.height,
                width: state.width,
              ),
            ],
          ),
        ),
      );
}
