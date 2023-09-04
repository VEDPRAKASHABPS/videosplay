// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:videosplay/pages/uploadpage.dart';
import 'package:videosplay/pages/viewpage.dart';
import 'package:flutter/material.dart';

// ignore: duplicate_import
import 'uploadpage.dart';
import 'viewpage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('demoapp'),
      ),
      body: Container(
        // height: double.infinity,
        // width: double.infinity,
        //color: Colors.amber,
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
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 40,
                  width: 40,
                  child: CircleAvatar(
                      backgroundImage: AssetImage('assetsimagesIMG_20230519_153836.jpg')),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 50,
                  width: 50,
                  //color: Colors.amber,
                  child: Center(
                      child: Text(
                    "VED ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 400,
                  width: 100,
                  // color: Colors.yellow,
                  child: ListView.builder(
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ViewPage()));
                              //   print()
                            },
                            child: Container(
                              child: Text(
                                "Video ${index + 1}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 50,
                  width: 55,
                  child: Center(child: Text("Location")),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 170, 10, 0),
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
                    )),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UploadPage()));
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
                    )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
