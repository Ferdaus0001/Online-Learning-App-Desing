import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_project/future/onboding/presentation/onboarding_screen.dart';

import '../../lauqud_design/presentation/luqent_design_screen.dart';


class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<Example> {
  final CardSwiperController controller = CardSwiperController();

  // Dummy Data
  final List image = [
    'https://th.bing.com/th/id/OIP.F6VyuMUgr0Rx8wTNPJ8mBAHaIu?rs=1&pid=ImgDetMain',
    'https://images.pexels.com/photos/1860208/pexels-photo-1860208.jpeg?cs=srgb&dl=cooked-food-1860208.jpg&fm=jpg',
    'https://wallpaperaccess.com/full/767054.jpg',
    'https://th.bing.com/th/id/R.717cc0aacdc643eb001436c3ee3520a6?rik=ACYgsJGr64avsg&riu=http%3a%2f%2fwww.wicklowpartnership.ie%2fwp-content%2fuploads%2f2013%2f06%2fHealthy-Foods.jpeg&ehk=uYXnYdv9899BOucywAt460QFbW884y%2bpcFGBUftqJHw%3d&risl=&pid=ImgRaw&r=0',
    'https://www.pixelstalk.net/wp-content/uploads/2016/08/Free-Food-Images-Download.jpg',

  ];

  // Mapping data to ExampleCard widget
  late final List<Widget> cards = image.map((name) => ExampleCard(name: name)).toList();

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
              scale: 0.1,
              // isDisabled: true,
              maxAngle: 30,
              threshold: 4,

              duration: Duration(seconds: 1),
              isLoop: true,
              // onEnd: (){
              //   Get.to(LuqentDesignScreen());
              // },
              allowedSwipeDirection:AllowedSwipeDirection.symmetric(horizontal: true) ,
              controller: controller,
              cardsCount: cards.length,
              onSwipe: _onSwipe,
              onUndo: _onUndo,
              numberOfCardsDisplayed: 3,
              backCardOffset: const Offset(40, 40),
              padding: const EdgeInsets.all(24.0),
              cardBuilder: (
                  context,
                  index,
                  horizontalThresholdPercentage,
                  verticalThresholdPercentage,
                  ) =>
              cards[index],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: controller.undo,
                  backgroundColor: Colors.orange,
                  child: const Icon(Icons.rotate_left),
                ),
                FloatingActionButton(
                  onPressed: () => controller.swipe(CardSwiperDirection.left),
                  backgroundColor: Colors.red,
                  child: const Icon(Icons.keyboard_arrow_left),
                ),
                FloatingActionButton(
                  onPressed: () =>
                      controller.swipe(CardSwiperDirection.right),
                  backgroundColor: Colors.green,
                  child: const Icon(Icons.keyboard_arrow_right),
                ),
                // FloatingActionButton(
                //   onPressed: () => controller.swipe(CardSwiperDirection.top),
                //   backgroundColor: Colors.blue,
                //   child: const Icon(Icons.keyboard_arrow_up),
                // ),
                // FloatingActionButton(
                //   onPressed: () =>
                //       controller.swipe(CardSwiperDirection.bottom),
                //   backgroundColor: Colors.purple,
                //   child: const Icon(Icons.keyboard_arrow_down),
                // ),
              ],
            ),
          ),
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
      'Card $previousIndex swiped to the ${direction.name}. Now card $currentIndex is on top.',
    );
    return true;
  }

  bool _onUndo(
      int? previousIndex,
      int currentIndex,
      CardSwiperDirection direction,
      ) {
    debugPrint(
      'Card $currentIndex was undone from the ${direction.name}.',
    );
    return true;
  }
}

// Card Widget
class ExampleCard extends StatelessWidget {
  final String name;

  const ExampleCard({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 115,
      color: Colors.deepPurple[200],
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(image: NetworkImage(name),fit: BoxFit.cover)
        ),
      ),
    );
  }
}
