import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/material.dart';

class PresentationWidget extends StatefulWidget {
  @override
  _PresentationWidgetState createState() => _PresentationWidgetState();
}

class _PresentationWidgetState extends State<PresentationWidget> {
  final _PlayPauseController _playPauseController = _PlayPauseController(() {});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.red,
          ),
          Align(
            alignment: AlignmentDirectional.bottomStart,
            child: Container(
              color: Colors.white,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: _controlButtons(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _controlButtons() => <Widget>[
        Container(
          width: 54,
          height: 34,
          child: Image.asset('lib/assets/images/backward.png'),
        ),
        Container(
          width: 64,
          height: 64,
          child: GestureDetector(
            onTap: () {
              _playPauseController.playAnimation();
            },
            child: FlareActor(
              "lib/assets/flare/PlayPause.flr",
              alignment: Alignment.center,
              fit: BoxFit.contain,
              animation: "PlayPause",
              controller: _playPauseController,
            ),
          ),
        ),
        Container(
          width: 54,
          height: 34,
          child: Image.asset('lib/assets/images/forward.png'),
        ),
      ];
}

class _PlayPauseController extends FlareControls {
  VoidCallback _callback;
  _PlayPauseController(this._callback);
  ActorAnimation _actorAnimation;
  bool isPlay = false;
  bool isAnimationFinised = false;
  
  double _rockAmount = 1.0;
  double _speed = 1.0;
  double _rockTime = 0.0;

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    if (isPlay) {
      return super.advance(artboard, elapsed);//.apply(0.0, artboard, 0.0);
    } else {
      _actorAnimation.apply(0.0, artboard, 1.0);
    }
    return true;
  }

  @override
  void initialize(FlutterActorArtboard artboard) {
    super.initialize(artboard);
    _actorAnimation = artboard.getAnimation('PlayPause');
  }

  @override
  void setViewTransform(Mat2D viewTransform) {
    super.setViewTransform(viewTransform);
  }

  void playAnimation() {
    isPlay = !isPlay;
    isAnimationFinised = false;
    play(
      'PlayPause',
      mix: 0.0,
    );
  }
}
