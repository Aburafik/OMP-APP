import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:omp_app/Components/Utils/color_themes.dart';
import 'package:omp_app/Components/Utils/constants.dart';
import 'package:omp_app/Views/Home/home_view.dart';


class EnvironmentProtectionTipsCarouselComponent extends StatefulWidget {
  const EnvironmentProtectionTipsCarouselComponent({Key? key})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _EnvironmentProtectionTipsCarouselComponentState();
  }
}

class _EnvironmentProtectionTipsCarouselComponentState
    extends State<EnvironmentProtectionTipsCarouselComponent> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        items: imageSliders,
        carouselController: _controller,
        options: CarouselOptions(
            viewportFraction: 1.0,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 1.9,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imgList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 12.0,
              height: 12.0,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : PRIMARY_COLOR)
                      .withOpacity(_current == entry.key ? 1 : 0.2)),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}