import 'package:flutter/material.dart';

class ScrollIndicator extends StatefulWidget {
  ///scrollController listview/gridview
  ///
  final ScrollController scrollController;
  final double width, height, indicatorWidth;
  final Decoration decoration, indicatorDecoration;
  final AlignmentGeometry alignment;
  const ScrollIndicator(
      {super.key,
      required this.scrollController,
      this.width = 100,
      this.height = 10,
      this.indicatorWidth = 20,
      this.decoration = const BoxDecoration(color: Colors.black26),
      this.indicatorDecoration = const BoxDecoration(color: Colors.black),
      this.alignment = Alignment.center});

  @override
  // ignore: library_private_types_in_public_api
  _ScrollIndicatorState createState() => _ScrollIndicatorState();
}

class _ScrollIndicatorState extends State<ScrollIndicator> {
  double currentPixels = 0.0;
  double mainContainer = 0.0;
  double move = 0.0;

  @override
  void initState() {
    widget.scrollController.addListener(() {
      _scrollListener();
    });
    super.initState();
  }

  void _scrollListener() {
    setState(() {
      currentPixels = widget.scrollController.position.pixels;
      mainContainer =
          widget.scrollController.position.maxScrollExtent / widget.width;
      move = (currentPixels / mainContainer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: widget.alignment,
      child: Container(
        height: widget.height,
        width: widget.width + widget.indicatorWidth,
        decoration: widget.decoration,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              left: move,
              child: Container(
                height: widget.height,
                width: widget.indicatorWidth,
                decoration: widget.indicatorDecoration,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
