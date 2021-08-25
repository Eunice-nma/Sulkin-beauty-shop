class SliderModel {
  final String image;
  final String description;
  const SliderModel({this.image, this.description});
}

List<SliderModel> sliderItems = [
  SliderModel(
    image: 'assets/images/slider1.png',
    description: 'Discover the world of natural skin care through our eyes!',
  ),
  SliderModel(
    image: 'assets/images/slider2.png',
    description: 'Everything you need to nourish your skin, inside and out.',
  ),
  SliderModel(
    image: 'assets/images/slider3.png',
    description:
    'Made with highest quality pure plant oils that delivers healthy skin.',
  ),
];