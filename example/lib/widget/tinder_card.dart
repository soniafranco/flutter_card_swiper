import 'package:example/example_candidate_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TinderCard extends StatelessWidget {
  final ExampleCandidateModel candidate;
  final int index;
  const TinderCard({required this.candidate, required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 44),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              // Image da cambiare
              image: DecorationImage(image: AssetImage('assets/images/profile.png'), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.6), borderRadius: BorderRadius.circular(50)),
              child: Text(
                '${candidate.distance} km',
                style: const TextStyle(
                  fontFamily: 'Prompt',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 92,
            left: 24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: '${candidate.name} ',
                    style: const TextStyle(
                      fontFamily: 'Prompt',
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 36,
                    ),
                    children: [
                      TextSpan(
                        text: candidate.age,
                        style: const TextStyle(
                          fontFamily: 'Prompt',
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 36,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      candidate.city,
                      style: const TextStyle(
                        fontFamily: 'Prompt',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const ImageIcon(
                      AssetImage('assets/images/zodiac.png'),
                      color: Colors.white,
                      size: 34,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Match interessi',
                      style: TextStyle(
                        fontFamily: 'Prompt',
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 9),
                    RatingBar(
                      itemSize: 16,
                      ignoreGestures: true,
                      onRatingUpdate: (value) {},
                      allowHalfRating: true,
                      initialRating: 2,
                      ratingWidget: RatingWidget(
                        full: const ImageIcon(
                          AssetImage('assets/images/star_full.png'),
                          color: Colors.amber,
                        ),
                        half: const ImageIcon(
                          AssetImage('assets/images/star_full.png'),
                          color: Colors.amber,
                        ), //da cambiare
                        empty: const ImageIcon(
                          AssetImage('assets/images/star_outlined.png'),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
