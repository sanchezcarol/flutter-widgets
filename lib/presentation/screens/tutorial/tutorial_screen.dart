
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo('Comida a cualquier hora', 'Loremasdsdsadaddad ', 'assets/images/1.png'),
  SlideInfo('Entrega a domicilio', 'Loremasdsdsadaddad ', 'assets/images/2.png'),
  SlideInfo('Disfruta la comida', 'Loremasdsdsadaddad ', 'assets/images/3.png'),
];


class TutorialScreen extends StatefulWidget {
  static const name = 'tutorial_screen';
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  final PageController pageviewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    pageviewController.addListener(() {
      final page = pageviewController.page ?? 0;
      if(!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached  = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageviewController,
            children: 
              slides.map(
                (slideData) => _Slide(
                  title: slideData.title, 
                  caption: slideData.caption, 
                  imageUrl: slideData.imageUrl
                )
              ).toList()
            ,
          ),

          Positioned(
            right: 20,
            top: 60,
            child: TextButton(onPressed: () => context.pop(), child: const Text('Skip'))
          ),
          
          endReached ? Positioned(
            bottom: 30,
            right: 20,
            child: FadeInRight(
              from: 15,
              delay: const Duration(milliseconds: 400),
              child: FilledButton(onPressed: () => context.pop(), child: const Text('Comenzar'))
            )
          ) : const SizedBox()
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 40),
            Text(title, style: textStyle,),
            const SizedBox(height: 10),
            Text(caption, style: captionStyle)
          ],
        ),
      ),
    );
  }
}