// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_import


// import 'package:d/videoplayer.dart';
import 'package:flutter/material.dart';
import 'package:videosplay/pages/uploadpage.dart';
import 'package:videosplay/pages/uploadpage.dart';
import 'package:videosplay/pages/videoplayer.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demoapp'),
      ),
      body: Container(
        // color: Colors.amber,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 60,
                  width: 250,
                  //color: Colors.black12,
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Search'),
                  ),
                ),
                Text('FILTER'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 150,
                width: 200,
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VideoApp(),
                        ),
                      );
                    },
                    child: Image.asset('assets/images/video.jpg')),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                height: 80,
                child: Text(
                  'Title',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 10, 0),
              height: 230,
              width: double.infinity,
              // color: Colors.amber,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(50, 10, 10, 0),
                          child: Text('Like'),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(60, 10, 10, 0),
                          child: Text('Dislike'),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(60, 10, 10, 0),
                          child: Text('Share'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(50, 10, 10, 0),
                          child: Text('Views'),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(50, 10, 10, 0),
                          child: Text('Days'),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(60, 10, 10, 0),
                          child: Text('Category'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(50, 10, 10, 0),
                          child: Text('User Profile Name'),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(60, 10, 10, 0),
                          child: Text('View all video'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 10, 10, 0),
                      child: Row(
                        children: [
                          Text('Comments'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(50, 10, 10, 0),
                      child: Row(
                        children: [
                          Text('Reply'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 10, 10, 0),
              height: 50,
              width: double.infinity,
              // color: Colors.black,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: Text(
                        'Explore',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UploadPage(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 50,
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: Text(
                        'Library',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
