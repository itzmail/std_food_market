part of 'models.dart';

class Food {
  final int? id;
  final String picturePath;
  final String name;
  final String? description;
  final String? ingredients;
  final int? price;
  final double? rate;

  const Food({Key? key, this.id, this.name = '', this.description, this.ingredients, this.price, this.rate, this.picturePath = '',});

}

Food mockFood = Food(
  id: 1,
  picturePath: 'https://robohash.org/mantap',
  name: "Sate Sayur Mantap Jiwa",
  description: "Sate Sayur Sultan adalah menu sate vegan paling terkenal di Bandung. Sate ini dibuat dari berbagai macam bahan mantap jiwa",
  rate: 4.2,
  ingredients: "Bawang Lanang, Paprika, Bawang Bombay, Timun",
  price: 150000
);