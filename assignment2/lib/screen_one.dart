import 'package:assignment2/screen_two.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});
  static const routName = '/';

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  List<Map<String, String>> myData = [
    {
      'title': 'Mood',
      'url': 'https://images.pexels.com/photos/395196/pexels-photo-395196.jpeg'
    },
    {
      'title': 'Aesthetic',
      'url':
          'https://images.pexels.com/photos/3685271/pexels-photo-3685271.jpeg'
    },
    {
      'title': 'Animals',
      'url': 'https://images.pexels.com/photos/792381/pexels-photo-792381.jpeg'
    },
    {
      'title': 'City',
      'url': 'https://images.pexels.com/photos/290595/pexels-photo-290595.jpeg'
    },
    {
      'title': 'Travel',
      'url':
          'https://images.pexels.com/photos/1008155/pexels-photo-1008155.jpeg'
    },
    {
      'title': 'Sky',
      'url':
          'https://images.pexels.com/photos/2531709/pexels-photo-2531709.jpeg'
    },
    {
      'title': 'Street',
      'url': 'https://images.pexels.com/photos/859214/pexels-photo-859214.jpeg'
    },
    {
      'title': 'Flowers',
      'url': 'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg'
    },
    {
      'title': 'Cars',
      'url':
          'https://images.pexels.com/photos/3311574/pexels-photo-3311574.jpeg'
    },
    {
      'title': 'Bikes',
      'url':
          'https://images.pexels.com/photos/1413412/pexels-photo-1413412.jpeg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Photo Gallery',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 44, 171, 0),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 180),
        itemCount: myData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: InkWell(
                onTap: () {
                  String title = myData[index]['title'].toString();
                  String url = myData[index]['url'].toString();
                  Navigator.pushNamed(context, ScreenTwo.routName,
                      arguments: [title, url]);
                },
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(myData[index]['url'].toString()),
                          fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 10,
                            spreadRadius: 7)
                      ]),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 10),
                      child: Text(
                        "${myData[index]['title']}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
