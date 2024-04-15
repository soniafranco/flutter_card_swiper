import 'package:example/example_candidate_model.dart';
import 'package:flutter/material.dart';

class DeckCard extends StatelessWidget {
  final ExampleCandidateModel candidate;
  final int index;
  final double angle;

  const DeckCard({
    required this.candidate,
    required this.index,
    required this.angle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final heightPolaroid = MediaQuery.of(context).size.height - 464;
    final widthPolaroid = MediaQuery.of(context).size.width - 96;

    return Transform.rotate(
      angle: angle,
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
