// ignore_for_file: prefer_const_constructors_in_immutables

import 'dart:io';

import 'package:flutter/material.dart';

class UploadForm extends StatefulWidget {
  final File videoFile;
  final String videoPath;
  UploadForm({super.key, required this.videoFile, required this.videoPath});

  @override
  State<UploadForm> createState() => _UploadFormState();
}

class _UploadFormState extends State<UploadForm> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
