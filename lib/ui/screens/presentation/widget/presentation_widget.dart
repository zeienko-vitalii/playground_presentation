import 'dart:async';

import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playground_presentation/assets/themes/app_colors.dart';

import 'flow_widgets/first_widget.dart';
import 'flow_widgets/presentation_inherited_widget.dart';
import 'flow_widgets/second_widget.dart';
import 'flow_widgets/third_widget.dart';

class PresentationWidget extends StatefulWidget {
  @override
  _PresentationWidgetState createState() => _PresentationWidgetState();
}

class _PresentationWidgetState extends State<PresentationWidget> {
  List<Widget> newResidentFlowScreens;
  PageController _pageController;
  Widget pagerView;
  Timer _nextPageTimer;

  _PlayPauseController _playPauseController;
  final _NavigationWindController _navigationFowardWindController = _NavigationWindController();
  final _NavigationWindController _navigationBackwardWindController = _NavigationWindController();

  ScreenUtil screenUtil = ScreenUtil.getInstance();

  @override
  Widget build(BuildContext context) {
//    screenUtil = ScreenUtil.getInstance()..init(context);
    return Material(
      child: Container(
        // color: Colors.red,
        child: InheritedPresentationWidget(
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: screenUtil.setHeight(108)),
                child: pagerView,
              ),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    top: 44.0,
                    right: 42.0,
                    bottom: 8.0,
                  ),
                  child: Image.asset(
                    'lib/assets/images/flutter.png',
                    width: 142,
                    height: 142,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.bottomStart,
                child: Container(
                  color: AppColors.getColor(COLOR_MAIN_SHADOW_30),
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: _controlButtons()..add(Spacer()),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPageView() {
    _pageController = PageController(
      initialPage: 0,
    );
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: newResidentFlowScreens,
    );
  }

  @override
  void initState() {
    super.initState();
    _playPauseController = _PlayPauseController(_runTimer, _stopTimer);
    _initFlowScreens();
    pagerView = _buildPageView();
  }

  _initFlowScreens() {
    newResidentFlowScreens = List();
    newResidentFlowScreens.add(FirstWidget());
    newResidentFlowScreens.add(SecondWidget());
    newResidentFlowScreens.add(Spinner());
    // newResidentFlowScreens.add(ThirdWidget(this));
    // newResidentFlowScreens.add(FourthWidget(this));
    // newResidentFlowScreens.add(FifthWidget(this));
  }

  void goToNextScreen() {
    if (_pageController.page.round() != newResidentFlowScreens.length - 1) {
      _pageController.nextPage(duration: Duration(milliseconds: 200), curve: Curves.ease);
    }
  }

  void goToPreviousScreen() {
    if (_pageController.page.round() != 0) {
      _pageController.previousPage(duration: Duration(milliseconds: 200), curve: Curves.ease);
    }
  }

  bool _canGoToTheNextScreen() => (_pageController.page.round() != newResidentFlowScreens.length - 1);

  _controlButtons() => <Widget>[
        InkWell(
          onTap: () {
            _navigationBackwardWindController.playAnimation();
            goToPreviousScreen();
          },
          child: RotationTransition(
            turns: new AlwaysStoppedAnimation(180 / 360),
            child: Container(
              width: 102,
              height: 102,
              child: FlareActor(
                "lib/assets/flare/ForwardWind.flr",
                alignment: Alignment.center,
                fit: BoxFit.contain,
                animation: "ForwardWind",
                controller: _navigationBackwardWindController,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            _playPauseController.playAnimation();
          },
          child: Container(
            width: 102,
            height: 102,
            child: FlareActor(
              "lib/assets/flare/PlayPause.flr",
              alignment: Alignment.center,
              fit: BoxFit.contain,
              animation: "PlayPause",
              controller: _playPauseController,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            _navigationFowardWindController.playAnimation();
            goToNextScreen();
          },
          child: Container(
            width: 102,
            height: 102,
            child: FlareActor(
              "lib/assets/flare/ForwardWind.flr",
              alignment: Alignment.center,
              fit: BoxFit.contain,
              animation: "ForwardWind",
              controller: _navigationFowardWindController,
            ),
          ),
        ),
      ];

  void _stopTimer() {
    _nextPageTimer?.cancel();
  }

  void _runTimer() {
    _nextPageTimer = Timer.periodic(
        Duration(
          seconds: 3,
        ), (_timer) {
      if (_canGoToTheNextScreen()) {
        goToNextScreen();
      } else {
        _playPauseController.playAnimation();
        _stopTimer();
      }
    });
  }
}

class _PlayPauseController extends FlareControls {
  VoidCallback _onPlaying;
  VoidCallback _endsPlaying;

  _PlayPauseController(this._onPlaying, this._endsPlaying);

  ActorAnimation _actorAnimation;
  bool isPlay = false;
  bool isAnimationFinised = false;

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    if (isPlay) {
      return super.advance(artboard, elapsed); //.apply(0.0, artboard, 0.0);
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
    if (isPlay) {
      _onPlaying();
    } else {
      _endsPlaying();
    }

    play(
      'PlayPause',
      mix: 0.0,
    );
  }
}

class _NavigationWindController extends FlareControls {
  _NavigationWindController();

  ActorAnimation _actorAnimation;
  bool isPlay = false;

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    if (isPlay) {
      return super.advance(artboard, elapsed); //.apply(0.0, artboard, 0.0);
    } else {
      _actorAnimation.apply(0.0, artboard, 1.0);
      isPlay = false;
    }
    return true;
  }

  @override
  void initialize(FlutterActorArtboard artboard) {
    super.initialize(artboard);
    _actorAnimation = artboard.getAnimation('ForwardWind');
  }

  @override
  void setViewTransform(Mat2D viewTransform) {
    super.setViewTransform(viewTransform);
  }

  void playAnimation() {
    isPlay = true;
    play(
      'ForwardWind',
      mix: 0.0,
    );
  }
}
