import 'package:carent/presentation/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

import '../../const.dart';

class DotsIndicator extends StatefulWidget {
  ValueNotifier<int> currentPageNotifier = ValueNotifier<int>(0);
  DotsIndicator({Key? key, required this.currentPageNotifier})
      : super(key: key);
  @override
  State<DotsIndicator> createState() => _DotsIndicatorState();
}

class _DotsIndicatorState extends State<DotsIndicator> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CirclePageIndicator(
          selectedDotColor: accentColor,
          dotColor: grey.withOpacity(0.3),
          size: 7,
          selectedSize: 9,
          itemCount: carList.length,
          currentPageNotifier: widget.currentPageNotifier,
        ),
      ),
    );
  }
}
