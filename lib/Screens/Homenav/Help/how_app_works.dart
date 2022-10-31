import 'dart:developer';

import 'package:calcu_lien/Screens/Homenav/homenav.dart';
import 'package:calcu_lien/utils/colors.dart';
import 'package:calcu_lien/utils/constants/screennavigation.dart';
import 'package:calcu_lien/utils/styleguide.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../../utils/utils.dart';
import 'help.dart';

// class How_App_Works extends StatefulWidget {
//   @override
//   _How_App_WorksState createState() => _How_App_WorksState();
// }

// class _How_App_WorksState extends State<How_App_Works> {
//   late VideoPlayerController controller;

//   @override
//   void initState() {
//     loadVideoPlayer();
//     super.initState();
//   }

//   loadVideoPlayer() {
//     controller = VideoPlayerController.network(
//         'https://www.fluttercampus.com/video.mp4');
//     controller.addListener(() {
//       if (mounted) setState(() {});
//     });
//     controller.initialize().then((value) {
//       if (mounted) setState(() {});
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: ktiledarkcolor,
//         automaticallyImplyLeading: true,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios),
//           onPressed: () {
//             pushRemove(
//                 context,
//                 HomeNav(
//                   currentindex: 4,
//                 ));
//           },
//           iconSize: 16,
//         ),
//         title: Text(
//           "How app works",
//           style: textRegular.copyWith(fontWeight: FontWeight.normal),
//         ),
//         centerTitle: true,
//       ),
//       body: Container(
//           margin:
//               EdgeInsets.only(left: w * 0.03, top: w * 0.03, right: w * 0.03),
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             Text(
//               "Watch video to know more",
//               style: textScroll.copyWith(color: kblack),
//               // textAlign: TextAlign.start,
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: w * 0.072),
//               child: Stack(
//                 children: [
//                   AspectRatio(
//                     aspectRatio: controller.value.aspectRatio,
//                     child: VideoPlayer(controller),
//                   ),
//                   Center(
//                     child: IconButton(
//                       onPressed: () {
//                         if (controller.value.isPlaying) {
//                           controller.pause();
//                         } else {
//                           controller.play();
//                         }

//                         setState(() {});
//                       },
//                       icon: Icon(
//                         controller.value.isPlaying
//                             ? Icons.pause
//                             : Icons.play_arrow_outlined,
//                         color: Colors.white,
//                       ),
//                       iconSize: 100,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//                 decoration:
//                     BoxDecoration(borderRadius: BorderRadius.circular(20)),
//                 child: VideoProgressIndicator(controller,
//                     allowScrubbing: true,
//                     colors: const VideoProgressColors(
//                       backgroundColor: ktiledarkcolor,
//                       playedColor: Colors.green,
//                       bufferedColor: Colors.white,
//                     ))),
//           ])),
//     );
//   }
// }



class How_App_Works extends StatefulWidget {
  @override
  _How_App_WorksState createState() => _How_App_WorksState();
}

class _How_App_WorksState extends State<How_App_Works> {
  late YoutubePlayerController _controller;
  late TextEditingController _idController;
  late TextEditingController _seekToController;

  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;
  double _volume = 100;
  bool _muted = false;
  bool _isPlayerReady = false;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId:YoutubePlayer.convertUrlToId( "https://www.youtube.com/watch?v=-TGiNSaT8BU")!,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);
    _idController = TextEditingController();
    _seekToController = TextEditingController();
    _videoMetaData = const YoutubeMetaData();
    _playerState = PlayerState.unknown;
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    _idController.dispose();
    _seekToController.dispose();
    super.dispose();
  }
  onwillPop(){

      SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
      Navigator.pop(context);
      return true;

  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.blueAccent,
        topActions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 25.0,
            ),
            onPressed: () {
              SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
              Navigator.pop(context);
            },
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(
              _controller.metadata.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
              size: 25.0,
            ),
            onPressed: () {
              log('Settings Tapped!');
            },
          ),
        ],
        onReady: () {
          _isPlayerReady = true;
        },
        // onEnded: (data) {
        //   _controller
        //       .load(_ids[(_ids.indexOf(data.videoId) + 1) % _ids.length]);
        //   _showSnackBar('Next Video Started!');
        // },
      ), onWillPop: ()=>onwillPop(), );  }
}
Widget _text(String title, String value) {
    return RichText(
      text: TextSpan(
        text: '$title : ',
        style: const TextStyle(
          color: Colors.blueAccent,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: value,
            style: const TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
   Color _getStateColor(PlayerState state) {
    switch (state) {
      case PlayerState.unknown:
        return Colors.grey[700]!;
      case PlayerState.unStarted:
        return Colors.pink;
      case PlayerState.ended:
        return Colors.red;
      case PlayerState.playing:
        return Colors.blueAccent;
      case PlayerState.paused:
        return Colors.orange;
      case PlayerState.buffering:
        return Colors.yellow;
      case PlayerState.cued:
        return Colors.blue[900]!;
      default:
        return Colors.blue;
    }
  }
Widget get _space => const SizedBox(height: 10);