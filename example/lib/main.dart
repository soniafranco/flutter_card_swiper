import 'package:example/example_candidate_model.dart';
import 'package:example/widget/deck_card.dart';
import 'package:example/widget/tinder_buttons.dart';
// import 'package:example/widget/tinder_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Example(),
    ),
  );
}

class Example extends StatefulWidget {
  const Example({
    super.key,
  });

  @override
  State<Example> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<Example> {
  final CardSwiperController controller = CardSwiperController();

  final cardsList = candidates;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: CardSwiper(
              controller: controller,
              cardsCount: candidates.length,
              allowedSwipeDirection: const AllowedSwipeDirection.only(up: true, left: true, right: true),
              onSwipe: _onSwipe,
              onUndo: _onUndo,
              threshold: 100,
              numberOfCardsDisplayed: 4,
              backCardOffset: const Offset(0, -30),
              // backCardOffset: Offset.zero,
              onSlideRegionDetected: (slideRegion) {
                debugPrint('------>');
                debugPrint(slideRegion.toString());
              },
              cardBuilder: (context, index, horizontalThresholdPercentage, verticalThresholdPercentage) {
                return DeckCard(
                  index: index,
                  candidate: candidates.elementAt(index),
                );
                // return TinderCard(index: index, candidate: candidates.elementAt(index));
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: kBottomNavigationBarHeight),
            child: TinderRowButtons(),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(bottom: kBottomNavigationBarHeight),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       FloatingActionButton(
          //         onPressed: controller.undo,
          //         child: const Icon(Icons.rotate_left),
          //       ),
          //       FloatingActionButton(
          //         onPressed: () => controller.swipe(CardSwiperDirection.left),
          //         child: const Icon(Icons.keyboard_arrow_left),
          //       ),
          //       FloatingActionButton(
          //         onPressed: () => controller.swipe(CardSwiperDirection.right),
          //         child: const Icon(Icons.keyboard_arrow_right),
          //       ),
          //       FloatingActionButton(
          //         onPressed: () => controller.swipe(CardSwiperDirection.top),
          //         child: const Icon(Icons.keyboard_arrow_up),
          //       ),
          //       FloatingActionButton(
          //         onPressed: () => controller.swipe(CardSwiperDirection.bottom),
          //         child: const Icon(Icons.keyboard_arrow_down),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top',
    );
    return true;
  }

  bool _onUndo(
    int? previousIndex,
    int currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $currentIndex was undod from the ${direction.name}',
    );
    return true;
  }
}

class TabloDeckCard {}
