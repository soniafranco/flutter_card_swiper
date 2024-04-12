import 'package:example/example_candidate_model.dart';
import 'package:flutter/material.dart';

class DeckCard extends StatelessWidget {
  final ExampleCandidateModel candidate;
  final int index;
  const DeckCard({
    required this.candidate,
    required this.index,
    super.key,
  });

  double getAngle(int index) {
    if (index == 0) {
      return -10.5 / 360;
    }
    if (index.isOdd) {
      return 18.5 / 360;
    }
    if (index.isEven) {
      return -11.5 / 360;
    }
    if (index % 5 == 0) {
      return 15.5 / 360;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final heightPolaroid = MediaQuery.of(context).size.height - 464;
    final widthPolaroid = MediaQuery.of(context).size.width - 96;

    return Transform.rotate(
      angle: getAngle(index),
      child: Center(
        child: SizedBox(
          height: heightPolaroid,
          width: widthPolaroid,
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.12),
                      blurRadius: 12,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset(
                        fit: BoxFit.cover,
                        'assets/images/profile.png',
                        height: heightPolaroid - 105,
                        width: widthPolaroid - 32,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            candidate.name,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            '${candidate.age} anni, ${candidate.city}',
                            style: TextStyle(
                              fontFamily: 'Prompt',
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.38),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
