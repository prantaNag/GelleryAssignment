import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});
  static const routName = '/second';

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  late List getData;
  @override
  void didChangeDependencies() {
    getData = ModalRoute.of(context)!.settings.arguments as List;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '${getData[0]}',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 44, 171, 0),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Expanded(
            child: ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  xs: 12,
                  md: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        height: 350,
                        width: 400,
                        child: Image.network(
                          '${getData[1]}',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                    xs: 12,
                    md: 6,
                    child: ResponsiveGridRow(
                      children: [
                        ResponsiveGridCol(
                            xs: 12,
                            md: 12,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 20),
                                  child: Text(
                                    "${getData[0]} With Nature",
                                    style: const TextStyle(fontSize: 25),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 20, top: 20),
                                  child: Text(
                                    "Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 20),
                                  child: Container(
                                    width: double.maxFinite,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green,
                                            foregroundColor: Colors.white),
                                        onPressed: () {},
                                        child: const Text(
                                          'See More',
                                        )),
                                  ),
                                )
                              ],
                            )),
                        ResponsiveGridCol(
                            xs: 12,
                            md: 12,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 20),
                                      child: Text(
                                        'Suggestions',
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.green),
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: 180,
                                            width: 180,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                image: const DecorationImage(
                                                    image: NetworkImage(
                                                        'https://images.pexels.com/photos/1413412/pexels-photo-1413412.jpeg'),
                                                    fit: BoxFit.cover),
                                                boxShadow: const [
                                                  BoxShadow(
                                                      color: Colors.black45,
                                                      blurRadius: 2,
                                                      spreadRadius: 3)
                                                ]),
                                            child: const Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10, bottom: 10),
                                                child: Text(
                                                  "Bike One",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                            height: 180,
                                            width: 180,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                image: const DecorationImage(
                                                    image: NetworkImage(
                                                        'https://images.pexels.com/photos/1413412/pexels-photo-1413412.jpeg'),
                                                    fit: BoxFit.cover),
                                                boxShadow: const [
                                                  BoxShadow(
                                                      color: Colors.black45,
                                                      blurRadius: 2,
                                                      spreadRadius: 3)
                                                ]),
                                            child: const Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10, bottom: 10),
                                                child: Text(
                                                  "Bike Two",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
