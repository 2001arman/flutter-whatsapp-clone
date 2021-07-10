import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:whatsapp_clone/Screen/Camera/camera_page.dart';
import 'package:whatsapp_clone/Screen/Camera/camera_view.dart';

late List<CameraDescription> cameras;

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _cameraController;
  late Future<void> cameraValue;
  String flash = "mati";
  IconData iconCamera = Icons.flash_off;

  @override
  void initState() {
    super.initState();
    _cameraController = CameraController(cameras[0], ResolutionPreset.max);
    cameraValue = _cameraController.initialize();
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _cameraController.dispose();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(
            future: cameraValue,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  child: CameraPreview(_cameraController),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          Align(
            // bottom: 0,
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.transparent,
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          toggleFlash();
                          print(flash);
                        },
                        icon: Icon(
                          iconCamera,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          takePhoto(context);
                        },
                        child: Icon(
                          Icons.panorama_fish_eye,
                          color: Colors.white,
                          size: 70,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.flip_camera_ios,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Hold for Video, tap for photo",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void takePhoto(BuildContext context) async {
    final path =
        join((await getTemporaryDirectory()).path, "${DateTime.now()}.png");
    try {
      XFile picture = await _cameraController.takePicture();
      await picture.saveTo(path);
      Navigator.push(context,
          MaterialPageRoute(builder: (builder) => CameraView(path: path)));
      print(path);
    } catch (e) {
      print(e);
    }
  }

  void toggleFlash() {
    if (flash == "mati") {
      setState(() {
        flash = "auto";
        _cameraController.setFlashMode(FlashMode.auto);
        iconCamera = Icons.flash_auto;
      });
    } else if (flash == "auto") {
      setState(() {
        flash = "hidup";
        _cameraController.setFlashMode(FlashMode.always);
        iconCamera = Icons.flash_on;
      });
    } else if (flash == "hidup") {
      setState(() {
        flash = "mati";
        _cameraController.setFlashMode(FlashMode.off);
        iconCamera = Icons.flash_off;
      });
    }
  }
}
