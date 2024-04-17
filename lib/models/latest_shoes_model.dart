class LatestShoesModel{
  final String id;
  final String image;
  final String name;
  final String price;
  final String category;
  final String title;
  final String description;

  LatestShoesModel(this.id, this.image, this.name, this.price, this.category, this.title, this.description);

  static List<LatestShoesModel> latestShoesData = [
    LatestShoesModel(
      '1',
      'assets/images/shoes/female_shoe/female_S5.png',
      'Puma',
      '\$999',
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
    ),
    LatestShoesModel(
      '1',
      'assets/images/shoes/female_shoe/female_S7.png',
      'Adidas',
      '\$799',
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
    ),
    LatestShoesModel(
      '1',
      'assets/images/shoes/male_shoe/shoes7.png',
      'Nike',
      '\$999',
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
    ),

    LatestShoesModel(
      '1',
      'assets/images/shoes/male_shoe/shoes4.png',
      'Reebok',
      '\$899',
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
    ),
    LatestShoesModel(
      '1',
      'assets/images/shoes/female_shoe/female_S9.png',
      'Fila',
      '\$799',
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
    ),
    LatestShoesModel(
      '1',
      'assets/images/shoes/kids_shoe/kids_s6.png',
      'Asics',
      '\$999',
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
    ),

    LatestShoesModel(
      '1',
      'assets/images/shoes/kids_shoe/kids_s2.png',
      'Converse',
      '\$799',
      'Kids shoes',
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
    ),
    LatestShoesModel(
      '1',
      'assets/images/shoes/kids_shoe/kids_s8.png',
      'Gucci',
      '\$999',
      'kids shoes',
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
    ),
    LatestShoesModel(
      '1',
      'assets/images/shoes/male_shoe/shoes3.png',
      'Skechers',
      '\$799',
      'Kids shoes',
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
    ),
  ];
}
