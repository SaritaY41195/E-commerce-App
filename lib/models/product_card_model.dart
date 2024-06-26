class ProductSneakersModel {
  final String id;
  final String image;
  final String name;
  final int price;
  final String category;
  final String title;
  final String description;
  int quantity;

  ProductSneakersModel(this.id, this.image, this.name, this.price,
      this.category, this.title, this.description, this.quantity);

  static List<ProductSneakersModel> menSneakersData = [
    ProductSneakersModel(
      '1',
      'assets/images/shoes/male_shoe/shoes1.png',
      'Puma',
      999,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      1,
    ),
    ProductSneakersModel(
      '1',
      'assets/images/shoes/male_shoe/shoes3.png',
      'Adidas',
      799,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      2,
    ),
    ProductSneakersModel(
        '1',
        'assets/images/shoes/male_shoe/shoes4.png',
        'Nike',
        999,
        "Men's shoes",
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        1),
    ProductSneakersModel(
        '1',
        'assets/images/shoes/male_shoe/shoes6.png',
        'Reebok',
        899,
        "Men's shoes",
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        2),
    ProductSneakersModel(
        '1',
        'assets/images/shoes/male_shoe/shoes7.png',
        'Fila',
        799,
        "Men's shoes",
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        1),
    ProductSneakersModel(
        '1',
        'assets/images/shoes/male_shoe/shoes1.png',
        'Asics',
        999,
        "Men's shoes",
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        2),
    ProductSneakersModel(
        '1',
        'assets/images/shoes/male_shoe/shoes3.png',
        'Converse',
        799,
        "Men's shoes",
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        1),
    ProductSneakersModel(
        '1',
        'assets/images/shoes/male_shoe/shoes5.png',
        'Gucci',
        999,
        "Men's shoes",
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        2),
    ProductSneakersModel(
        '1',
        'assets/images/shoes/male_shoe/shoes3.png',
        'Skechers',
        799,
        "Men's shoes",
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        1),
  ];
  static List<ProductSneakersModel> womenSneakersData = [
    ProductSneakersModel(
        '1',
        'assets/images/shoes/female_shoe/female1.jpg',
        'Puma',
        999,
        "Women's shoes",
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        1),
    ProductSneakersModel(
        '2',
        'assets/images/shoes/female_shoe/female10.jpg',
        'Adidas',
        799,
        "Women's shoes",
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilation's",
        1),
    ProductSneakersModel(
        '2',
        'assets/images/shoes/female_shoe/female2.jpg',
        'Nike',
        999,
        "Women's shoes",
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        1),
    ProductSneakersModel(
        '2',
        'assets/images/shoes/female_shoe/female3.jpg',
        'Reebok',
        899,
        "Women's shoes",
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        1),
    ProductSneakersModel(
        '2',
        'assets/images/shoes/female_shoe/female4.jpg',
        'Fila',
        799,
        "Women's shoes",
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        1),
    ProductSneakersModel(
        '2',
        'assets/images/shoes/female_shoe/female5.jpg',
        'Asics',
        999,
        "Women's shoes",
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        1),
    ProductSneakersModel(
        '2',
        'assets/images/shoes/female_shoe/female6.jpg',
        'Converse',
        799,
        "Women's shoes",
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        1),
    ProductSneakersModel(
        '2',
        'assets/images/shoes/female_shoe/female7.jpg',
        'Gucci',
        999,
        "Women's shoes",
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        1),
    ProductSneakersModel(
        '2',
        'assets/images/shoes/female_shoe/female8.jpg',
        'Skechers',
        799,
        "Women's shoes",
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        1),
    ProductSneakersModel(
        '2',
        'assets/images/shoes/female_shoe/female9.jpg',
        'Converse',
        899,
        "Women's shoes",
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        1),
  ];
  static List<ProductSneakersModel> kidsSneakersData = [
    ProductSneakersModel(
        '3',
        'assets/images/shoes/kids_shoe/kid5.jpg',
        'Puma',
        999,
        'Kids shoes',
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        2),
    ProductSneakersModel(
        '3',
        'assets/images/shoes/kids_shoe/kid2.jpg',
        'Adidas',
        799,
        'Kids shoes',
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        1),
    ProductSneakersModel(
        '3',
        'assets/images/shoes/kids_shoe/kid3.jpg',
        'Nike',
        999,
        'Kids shoes',
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        1),
    ProductSneakersModel(
        '3',
        'assets/images/shoes/kids_shoe/kid4.jpg',
        'Reebok',
        899,
        'Kids shoes',
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        2),
    ProductSneakersModel(
        '3',
        'assets/images/shoes/kids_shoe/kid1.jpg',
        'Fila',
        799,
        'Kids shoes',
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilation's",
        1),
    ProductSneakersModel(
        '3',
        'assets/images/shoes/kids_shoe/kid10.jpg',
        'Asics',
        999,
        'Kids shoes',
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilation's",
        2),
    ProductSneakersModel(
        '3',
        'assets/images/shoes/kids_shoe/kid7.jpg',
        'Converse',
        799,
        'Kids shoes',
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        1),
    ProductSneakersModel(
        '3',
        'assets/images/shoes/kids_shoe/kid8.jpg',
        'Gucci',
        999,
        'kids shoes',
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilations",
        1),
    ProductSneakersModel(
        '3',
        'assets/images/shoes/kids_shoe/kid9.jpg',
        'Sketchers',
        799,
        'Kids shoes',
        "Put some pep in your step with the adidas",
        "Adidas Running Shoes With Cooling Ventilation's",
        2),
  ];
}
