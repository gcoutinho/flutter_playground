import 'package:flutter/material.dart';
import 'package:playground/featured/presentation/featured.dart';
import 'package:playground/login/presentation/login.dart';
import 'package:playground/session/session.dart';
import 'package:playground/widgets/appbar.dart';
import 'package:playground/widgets/gradient_bg.dart';
import 'package:playground/widgets/image_carousel.dart';

import '../repository/carousel_repository.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: gradientBgDecorator(),
      child: Column(
        children: [
          buildAppBar(),
          ImageCarousel(CarouselRepository().getItems()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => navigateToFeatured(context),
                child: Image.network(
                  'https://www.paralelo.app.br/assets/cards/em-alta-17e7e12146666dfcb5bace60d16d72ff6cb480ffb3287a9d8ffb81b1a6e42322.png',
                  width: 100,
                ),
              ),
              const Padding(padding: EdgeInsets.all(12.0)),
              Image.network(
                'https://www.paralelo.app.br/assets/cards/favoritos-8f7b0f00e19af2617ce7a924128d4063aecf272ea759b99b1587186f578a5fac.png',
                width: 100,
              ),
              const Padding(padding: EdgeInsets.all(12.0)),
              Image.network(
                'https://www.paralelo.app.br/assets/cards/boa-da-semana-9ab16ea74790c50e1b640b4d90be27a0525702792ce3626e08fa66076b2f18eb.png',
                width: 100,
              ),
            ],
          )
        ],
      ),
    );
  }

  navigateToFeatured(BuildContext context) {
    String? authToken = Session.instance.getAuthToken();

    if (authToken == null) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
      return;
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Featured(imageUrl: ''),
        ),
      );
    }
  }
}
