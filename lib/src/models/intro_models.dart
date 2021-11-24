part of models;

class IntroModel {
  final String? imagePath;
  final String? title;
  final String? description;

  IntroModel({this.imagePath, this.title, this.description});

  static List<IntroModel> data = [
    IntroModel(
        imagePath: 'assets/intro1.png',
        title: 'May be used as a place',
        description: 'Discover the best Ride sharing experience...'),
    IntroModel(
        imagePath: 'assets/intro2.png',
        title: 'Go to your destination',
        description: 'Discover the best ride sharing service in the city.'),
    IntroModel(
        imagePath: 'assets/intro4.png',
        title: 'Live tracking',
        description: 'Real time tracking of your location.')
  ];
}
