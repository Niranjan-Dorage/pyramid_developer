import 'package:flutter/material.dart';

class BestForYou extends StatelessWidget {
  const BestForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        const Text('Best for you',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
        const SizedBox(
          height: 16,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: bestForYouList.length,
              itemBuilder: (BuildContext context, int index) {
                print(bestForYouList.length);
                return bestForYouList[index];
              },
            ),
          ),
        )
      ],
    );
  }
}

class BestForYouCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final String duration;
  final String level;
  final String name_1;
  final String imagePath_1;
  final String duration_1;
  final String level_1;
  const BestForYouCard(
      {super.key,
      required this.imagePath,
      required this.duration,
      required this.level,
      required this.imagePath_1,
      required this.name_1,
      required this.duration_1,
      required this.level_1,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 86,
          margin: EdgeInsets.only(bottom: 10, right: 10),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(10), //
                child: Image(
                  width: 72,
                  image: AssetImage('assets/$imagePath.png'),
                  fit: BoxFit.cover,
                ),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(name,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 18,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      duration,
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 117, 117, 117)),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 18,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      level,
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 117, 117, 117)),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
        Container(
          width: 200,
          height: 86,
          margin: EdgeInsets.only(bottom: 10, right: 10),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              const Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(10), //
                child: Image(
                  width: 72,
                  image: AssetImage('assets/$imagePath_1.png'),
                  fit: BoxFit.cover,
                ),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(name_1,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 18,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      duration_1,
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 117, 117, 117)),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 18,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      level_1,
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 117, 117, 117)),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}

List<BestForYouCard> bestForYouList = [
  BestForYouCard(
      name: "belly fat burner",
      imagePath: 'ex_1',
      duration: '10 min',
      level: 'Beginner',
      imagePath_1: 'ex_2',
      duration_1: '5 min',
      name_1: "Plank",
      level_1: 'Expert'),
  BestForYouCard(
      name: "belly fat burner",
      imagePath: 'ex_1',
      duration: '10 min',
      level: 'Beginner',
      imagePath_1: 'ex_2',
      duration_1: '5 min',
      name_1: "Plank",
      level_1: 'Expert'),
  BestForYouCard(
      name: "belly fat burner",
      imagePath: 'ex_1',
      duration: '10 min',
      level: 'Beginner',
      imagePath_1: 'ex_2',
      duration_1: '5 min',
      name_1: "Plank",
      level_1: 'Expert'),
];
