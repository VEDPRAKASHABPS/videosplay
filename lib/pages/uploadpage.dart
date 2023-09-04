// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

// ignore: depend_on_referenced_packages
//import 'package:demoapp/mainhome.dart';
//import 'package:demoapp/uploadform.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:videosplay/home_page.dart';
import 'package:videosplay/pages/uploadform.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({Key? key}) : super(key: key);

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  Future<void> getVideoFile(ImageSource sourceImg) async {
    final videoFile = await ImagePicker().pickVideo(source: sourceImg);
    if (videoFile != null) {
      // Confirmation
      Get.to(
        UploadForm(
          videoFile: File(videoFile.path),
          videoPath: videoFile.path,
        ),
      );
    }
  }

  Future<void> displayDialogueBox() async {
    await showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        children: [
          SimpleDialogOption(
            onPressed: () {
              getVideoFile(ImageSource.gallery);
            },
            child: Row(
              children: [
                Icon(Icons.image),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Get Video from Gallery",
                      maxLines: 3,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SimpleDialogOption(
            onPressed: () {
              getVideoFile(ImageSource.camera);
            },
            child: Row(
              children: [
                Icon(Icons.camera_alt),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Make Video with Phone Camera",
                      maxLines: 3,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SimpleDialogOption(
            child: Row(
              children: [
                Icon(Icons.cancel),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  child: Text(
                    "Cancel",
                    maxLines: 3,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Upload Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            displayDialogueBox();
          },
          child: Text('Upload Video'),
        ),
      ),
    );
  }
}
