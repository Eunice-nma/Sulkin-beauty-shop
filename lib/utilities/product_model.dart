class ProductModel {
  final String imagePath;
  final String name;
  final String type;
  final double price;
  final String description;
  final double rating;
  final String category;
  final double sizeML;

  const ProductModel(
      {this.type,
      this.name,
      this.imagePath,
      this.price,
      this.rating,
      this.description,
      this.category,
      this.sizeML});
}

List<ProductModel> products = [
  ProductModel(
    name: 'Facial Moisturiser',
    type: 'Sensitive',
    price: 17.7,
    imagePath: 'facialM_sensitive',
    description:
        'Do you feel like you need a super food smoothie for your skin? Our Nutrient Rich Facial Moisturizer is perfect for you! It is enriched with Super Greens extracts of Kale, Spirulina, Parsley and Chlorella to give your skin a nutrient boost to promote a radiant, glowing and healthy complexion.',
    rating: 3.7,
    category: 'face',
    sizeML: 125,
  ),
  ProductModel(
    name: 'Facial Moisturiser',
    type: 'For men',
    price: 20.99,
    imagePath: 'facialM_forMen',
    description:
        'Do you feel like you need a super food smoothie for your skin? Our Nutrient Rich Facial Moisturizer is perfect for you! It is enriched with Super Greens extracts of Kale, Spirulina, Parsley and Chlorella to give your skin a nutrient boost to promote a radiant, glowing and healthy complexion.',
    rating: 4.3,
    category: 'face',
    sizeML: 125,
  ),
  ProductModel(
    name: 'Day Cream',
    type: 'Hydrating',
    price: 17.99,
    imagePath: 'dayCream_hydrating',
    description:
        'Reap the amazing benefits of our Rosehip Oil within our Hydrating Day Cream! It contains a powerful blend of Rosehip Oil infused with antioxidant rich Pomegranate to help relieve dehydrated skin and prevent the signs of premature aging.',
    rating: 4.9,
    category: 'face',
    sizeML: 120,
  ),
  ProductModel(
    name: 'Facial Moisturiser',
    type: 'Nutrient Rich',
    price: 24.89,
    imagePath: 'facialM_nutrientRich',
    description:
        'Do you feel like you need a super food smoothie for your skin? Our Nutrient Rich Facial Moisturizer is perfect for you! It is enriched with Super Greens extracts of Kale, Spirulina, Parsley and Chlorella to give your skin a nutrient boost to promote a radiant, glowing and healthy complexion.',
    rating: 3.4,
    category: 'face',
    sizeML: 110,
  ),
  ProductModel(
    name: 'Day Cream',
    type: 'rejuvenating',
    price: 19.99,
    imagePath: 'dayCream_rejuvenating',
    description:
        'Reap the amazing benefits of our Rosehip Oil within our Hydrating Day Cream! It contains a powerful blend of Rosehip Oil infused with antioxidant rich Pomegranate to help relieve dehydrated skin and prevent the signs of premature aging.',
    rating: 4,
    category: 'face',
    sizeML: 120,
  ),
  ProductModel(
    name: 'Facial Moisturiser',
    type: 'Signature',
    price: 18.90,
    imagePath: 'facialM_signature',
    description:
        'Do you feel like you need a super food smoothie for your skin? Our Nutrient Rich Facial Moisturizer is perfect for you! It is enriched with Super Greens extracts of Kale, Spirulina, Parsley and Chlorella to give your skin a nutrient boost to promote a radiant, glowing and healthy complexion.',
    rating: 4.8,
    category: 'face',
    sizeML: 123,
  ),
];

List<ProductModel> popularProducts = [
  ProductModel(
    name: 'Day Cream',
    type: 'Hydrating',
    price: 17.99,
    imagePath: 'dayCream_hydrating',
    description:
    'Reap the amazing benefits of our Rosehip Oil within our Hydrating Day Cream! It contains a powerful blend of Rosehip Oil infused with antioxidant rich Pomegranate to help relieve dehydrated skin and prevent the signs of premature aging.',
    rating: 4,
    category: 'face',
    sizeML: 120,
  ),
  ProductModel(
    name: 'Day Cream',
    type: 'rejuvenating',
    price: 19.99,
    imagePath: 'dayCream_rejuvenating',
    description:
    'Reap the amazing benefits of our Rosehip Oil within our Hydrating Day Cream! It contains a powerful blend of Rosehip Oil infused with antioxidant rich Pomegranate to help relieve dehydrated skin and prevent the signs of premature aging.',
    rating: 4,
    category: 'face',
    sizeML: 120,
  ),
  ProductModel(
    name: 'Facial Moisturiser',
    type: 'Nutrient Rich',
    price: 24.89,
    imagePath: 'facialM_nutrientRich',
    description:
    'Do you feel like you need a super food smoothie for your skin? Our Nutrient Rich Facial Moisturizer is perfect for you! It is enriched with Super Greens extracts of Kale, Spirulina, Parsley and Chlorella to give your skin a nutrient boost to promote a radiant, glowing and healthy complexion.',
    rating: 3.4,
    category: 'face',
    sizeML: 110,
  ),
  ProductModel(
    name: 'Facial Moisturiser',
    type: 'Signature',
    price: 18.90,
    imagePath: 'facialM_signature',
    description:
    'Do you feel like you need a super food smoothie for your skin? Our Nutrient Rich Facial Moisturizer is perfect for you! It is enriched with Super Greens extracts of Kale, Spirulina, Parsley and Chlorella to give your skin a nutrient boost to promote a radiant, glowing and healthy complexion.',
    rating: 4.8,
    category: 'face',
    sizeML: 123,
  ),
];
