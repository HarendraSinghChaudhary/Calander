import 'package:calcu_lien/Screens/Homenav/homenav.dart';
import 'package:calcu_lien/utils/colors.dart';
import 'package:calcu_lien/utils/constants/screennavigation.dart';
import 'package:calcu_lien/utils/styleguide.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import '../../../utils/utils.dart';
import 'help.dart';

class How_App_Works extends StatefulWidget {
  @override
  _How_App_WorksState createState() => _How_App_WorksState();
}

class _How_App_WorksState extends State<How_App_Works> {
  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer() {
    controller = VideoPlayerController.network(
        'https://www.fluttercampus.com/video.mp4');
    controller.addListener(() {
      if (mounted) setState(() {});
    });
    controller.initialize().then((value) {
      if (mounted) setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ktiledarkcolor,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            pushRemove(
                context,
                HomeNav(
                  currentindex: 4,
                ));
          },
          iconSize: 16,
        ),
        title: Text(
          "How app works",
          style: textRegular.copyWith(fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
      ),
      body: Container(
          margin:
              EdgeInsets.only(left: w * 0.03, top: w * 0.03, right: w * 0.03),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Watch video to know more",
              style: textScroll.copyWith(color: kblack),
              // textAlign: TextAlign.start,
            ),
            Padding(
              padding: EdgeInsets.only(top: w * 0.072),
              child: Stack(
                children: [
                  AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: VideoPlayer(controller),
                  ),
                  Center(
                    child: IconButton(
                      onPressed: () {
                        if (controller.value.isPlaying) {
                          controller.pause();
                        } else {
                          controller.play();
                        }

                        setState(() {});
                      },
                      icon: Icon(
                        controller.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow_outlined,
                        color: Colors.white,
                      ),
                      iconSize: 100,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: VideoProgressIndicator(controller,
                    allowScrubbing: true,
                    colors: const VideoProgressColors(
                      backgroundColor: ktiledarkcolor,
                      playedColor: Colors.green,
                      bufferedColor: Colors.white,
                    ))),
          ])),
    );
  }
}
