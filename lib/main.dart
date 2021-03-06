import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screen/Camera/camera_page.dart';
import 'package:whatsapp_clone/Screen/Camera/camera_screen.dart';
import 'package:whatsapp_clone/Screen/Status/status_box.dart';
import 'package:whatsapp_clone/Screen/chat/chat_screen.dart';
import 'package:whatsapp_clone/Screen/panggilan/call_screen.dart';
import 'package:whatsapp_clone/widgets/my_app_bar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              MyAppBar(),
            ];
          },
          body: TabBarView(
            children: [
              CameraPage(),
              ChatScreen(),
              StatusBox(),
              CallScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
