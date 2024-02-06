import 'package:flutter/material.dart';
import 'package:mentalhealth_app/util/emoticon_face.dart';
import 'package:mentalhealth_app/util/excercise_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Fav'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: 'Notification'),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hi Immi
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Hi, Immi !',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            '23 Jan 2024',
                            style: TextStyle(
                              color: Colors.blue[100],
                            ),
                          )
                        ],
                      ),

                      //Notification
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  //Search Bar
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.all(12),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),

                  //How do you feel?

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  //Four differents faces
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Good
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😐',
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Good",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )
                        ],
                      ),
                      // Fine
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '🙂',
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Fine",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )
                        ],
                      ),
                      //Well
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😀',
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Well",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )
                        ],
                      ),
                      // Excelent
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😁',
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Excelent",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                    child: Column(
                  children: [
                    // Excercise Heading
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Excercises",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.more_horiz,
                          size: 25,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Listview of excercise
                    Expanded(
                        child: ListView(
                      children: const [
                        ExcerxiseTile(
                          iconn: Icons.favorite,
                          excerciseName: 'Speaking Skills',
                          numberOfExcercises: '16 Excercises',
                          colorr: Colors.orange,
                        ),
                        ExcerxiseTile(
                          iconn: Icons.person,
                          excerciseName: 'Reading Skills',
                          numberOfExcercises: '12 Excercises',
                          colorr: Colors.purple,
                        ),
                        ExcerxiseTile(
                          iconn: Icons.star,
                          excerciseName: 'Writing Skills',
                          numberOfExcercises: '08 Excercises',
                          colorr: Colors.pink,
                        ),
                        ExcerxiseTile(
                          iconn: Icons.earbuds,
                          excerciseName: 'Listening Skills',
                          numberOfExcercises: '22 Excercises',
                          colorr: Colors.green,
                        ),
                      ],
                    ))
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
