import 'package:playground/widgets/image_carousel.dart';

class CarouselRepository {
  List<CarouselItem> getItems() => List.from([
        CarouselItem(
            'https://res.cloudinary.com/paralelo-app-br/image/upload/v1/production/fsl5x0oof954a1widyrlydozdkfc',
            'https://www.engov.com.br/?utm_source=&?utm_campaign=&?utm_term=&?utm_content=&?utm_medium='),
        CarouselItem(
            'https://res.cloudinary.com/paralelo-app-br/image/upload/v1/production/fsl5x0oof954a1widyrlydozdkfc',
            'https://www.jackdaniels.com/pt-br/?utm_source=&?utm_campaign=&?utm_term=&?utm_content=&?utm_medium='),
        CarouselItem(
            'https://res.cloudinary.com/paralelo-app-br/image/upload/v1/production/fsl5x0oof954a1widyrlydozdkfc',
            'https://www.engov.com.br/?utm_source=&?utm_campaign=&?utm_term=&?utm_content=&?utm_medium=')
      ]);
}
