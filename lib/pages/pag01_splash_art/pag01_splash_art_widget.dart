import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'pag01_splash_art_model.dart';
export 'pag01_splash_art_model.dart';

class Pag01SplashArtWidget extends StatefulWidget {
  const Pag01SplashArtWidget({super.key});

  static String routeName = 'Pag01SplashArt';
  static String routePath = '/pag01SplashArt';

  @override
  State<Pag01SplashArtWidget> createState() => _Pag01SplashArtWidgetState();
}

class _Pag01SplashArtWidgetState extends State<Pag01SplashArtWidget> {
  late Pag01SplashArtModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Pag01SplashArtModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: FlutterFlowVideoPlayer(
                path: 'assets/videos/529-720.mp4',
                videoType: VideoType.asset,
                autoPlay: false,
                looping: true,
                showControls: true,
                allowFullScreen: true,
                allowPlaybackSpeedMenu: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
