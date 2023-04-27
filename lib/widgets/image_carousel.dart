import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  final List<CarouselItem> items;

  const ImageCarousel(this.items, {super.key});

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentIndex = 0;
  List<CarouselItem> _items = [];

  @override
  void initState() {
    super.initState();
    _items = widget.items;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Defina a altura do carrossel aqui
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 150,
              viewportFraction: 0.8, // Defina a largura da imagem aqui
              enableInfiniteScroll: true,
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: false,
              autoPlayInterval: const Duration(seconds: 5),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: _items
                .map((e) => SizedBox(
                      width: 300, //MediaQuery.of(context).size.width * 0.8,
                      child: Image.network(e.url, fit: BoxFit.fitWidth),
                    ))
                .toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _items.map((url) {
              int index = _items.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? Colors.white
                      : Colors.grey.shade600,
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

class CarouselItem {
  final String url;
  final String link;
  CarouselItem(this.url, this.link);
}
