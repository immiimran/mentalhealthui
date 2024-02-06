import 'package:flutter/material.dart';

class ExcerxiseTile extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final iconn;
  final String excerciseName;
  final String numberOfExcercises;
  // ignore: prefer_typing_uninitialized_variables
  final colorr;
  const ExcerxiseTile({
    super.key,
    required this.iconn,
    required this.excerciseName,
    required this.numberOfExcercises,
    required this.colorr,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(iconn)),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        excerciseName,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(numberOfExcercises,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_horiz),
            ],
          )),
    );
  }
}
