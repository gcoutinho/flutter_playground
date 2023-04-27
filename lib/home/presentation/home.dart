import 'package:flutter/material.dart';
import 'package:playground/home/widgets/main_sections_widget.dart';
import 'package:playground/widgets/appbar.dart';
import 'package:playground/widgets/gradient_bg.dart';
import 'package:playground/widgets/image_carousel.dart';

import 'package:playground/event/event_repository.dart';
import 'package:playground/model/event.dart';
import 'package:playground/home/repository/carousel_repository.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Event> events = EventRepository().getEvents();

    List<String> categories = events.map((e) => e.category).toSet().toList();

    return Container(
      decoration: gradientBgDecorator(),
      child: Column(
        children: [
          buildAppBar(),
          ImageCarousel(CarouselRepository().getItems()),
          MainSectionsWidget(),
          Expanded(
              child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              String category = categories[index];
              List<Event> eventsByCategory =
                  events.where((e) => e.category == category).toList();

              return ExpansionTile(
                initiallyExpanded: true,
                title: Text(category, style: TextStyle(color: Colors.white)),
                textColor: Colors.white,
                children: [
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: eventsByCategory.length,
                      itemBuilder: (BuildContext context, int index) {
                        Event event = eventsByCategory[index];

                        return Column(
                          children: [
                            Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image.network(
                                    event.imageUrl,
                                    width: 100,
                                    errorBuilder: (context, error,
                                            stackTrace) =>
                                        Image.asset('assets/mock_event.png'),
                                  ),
                                ],
                              ),
                            ),
                            Text(event.label,
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          )),
        ],
      ),
    );
  }
}
