class LatestShoesModel{
  final String id;
  final String image;
  final String name;
  final double price;
  final String category;
  final String title;
  final String description;

  LatestShoesModel(this.id, this.image, this.name, this.price, this.category, this.title, this.description);

  static List<LatestShoesModel> latestShoesData = [
    LatestShoesModel(
      '2',
      'assets/images/shoes/female_shoe/female4.jpg',
      'Puma',
      999,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
    ),
    LatestShoesModel(
      '2',
      'assets/images/shoes/female_shoe/female7.jpg',
      'Adidas',
       799,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
    ),
    LatestShoesModel(
      '1',
      'assets/images/shoes/male_shoe/shoes7.png',
      'Nike',
       999,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
    ),

    LatestShoesModel(
      '1',
      'assets/images/shoes/male_shoe/shoes4.png',
      'Reebok',
       899,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
    ),
    LatestShoesModel(
      '2',
      'assets/images/shoes/female_shoe/female8.jpg',
      'Fila',
       799,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
    ),
    LatestShoesModel(
      '3',
      'assets/images/shoes/kids_shoe/kid4.jpg',
      'Asics',
       999,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
    ),

    LatestShoesModel(
      '3',
      'assets/images/shoes/kids_shoe/kid2.jpg',
      'Converse',
       799,
      'Kids shoes',
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
    ),
    LatestShoesModel(
      '3',
      'assets/images/shoes/kids_shoe/kid7.jpg',
      'Gucci',
      999,
      'kids shoes',
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
    ),
    LatestShoesModel(
      '1',
      'assets/images/shoes/male_shoe/shoes3.png',
      'Skechers',
      799,
      'Kids shoes',
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
    ),
  ];
}
