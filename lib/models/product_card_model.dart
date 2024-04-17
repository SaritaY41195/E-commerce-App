class ProductSneakersModel{
  final String id;
  final String image;
  final String name;
  final int price;
  final String category;
  final String title;
  final String description;
  int quantity;

  ProductSneakersModel(this.id, this.image, this.name, this.price, this.category, this.title, this.description, this.quantity);

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
      9999,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      1
    ),

    ProductSneakersModel(
      '1',
      'assets/images/shoes/male_shoe/shoes6.png',
      'Reebok',
      899,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      2
    ),
    ProductSneakersModel(
      '1',
      'assets/images/shoes/male_shoe/shoes7.png',
      'Fila',
      799,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      1
    ),
    ProductSneakersModel(
      '1',
      'assets/images/shoes/male_shoe/shoes1.png',
      'Asics',
      9999,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      2
    ),

    ProductSneakersModel(
      '1',
      'assets/images/shoes/male_shoe/shoes3.png',
      'Converse',
      799,
      'Kids shoes',
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      1
    ),
    ProductSneakersModel(
      '1',
      'assets/images/shoes/male_shoe/shoes5.png',
      'Gucci',
      9999,
      'kids shoes',
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      2
    ),
    ProductSneakersModel(
      '1',
      'assets/images/shoes/male_shoe/shoes3.png',
      'Skechers',
      799,
      'Kids shoes',
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      1
    ),
  ];
  static List<ProductSneakersModel> womenSneakersData = [
    ProductSneakersModel(
      '1',
      'assets/images/shoes/female_shoe/female_S1.png',
      'Puma',
      9999,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      1
    ),
    ProductSneakersModel(
      '1',
      'assets/images/shoes/female_shoe/female_S2.png',
      'Adidas',
      799,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      1
    ),
    ProductSneakersModel(
      '1',
      'assets/images/shoes/female_shoe/female_S3.png',
      'Nike',
      9999,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      1
    ),

    ProductSneakersModel(
      '1',
      'assets/images/shoes/female_shoe/female_S4.png',
      'Reebok',
      899,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      1
    ),
    ProductSneakersModel(
      '1',
      'assets/images/shoes/female_shoe/female_S5.png',
      'Fila',
      799,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      1
    ),
    ProductSneakersModel(
      '1',
      'assets/images/shoes/female_shoe/female_S6.png',
      'Asics',
      9999,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      1
    ),

    ProductSneakersModel(
      '1',
      'assets/images/shoes/female_shoe/female_S7.png',
      'Converse',
      799,
      'Kids shoes',
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      1
    ),
    ProductSneakersModel(
      '1',
      'assets/images/shoes/female_shoe/female_S8.png',
      'Gucci',
      9999,
      'kids shoes',
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      1
    ),
    ProductSneakersModel(
      '1',
      'assets/images/shoes/female_shoe/female_S99.png',
      'Skechers',
      799,
      'Kids shoes',
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      1
    ),
  ];
  static List<ProductSneakersModel> kidsSneakersData = [
    ProductSneakersModel(
      '1',
      'assets/images/shoes/kids_shoe/kid_s1.png',
      'Puma',
      9999,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      2
    ),
    ProductSneakersModel(
      '1',
      'assets/images/shoes/kids_shoe/kid_s2.png',
      'Adidas',
      799,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      1
    ),
    ProductSneakersModel(
      '1',
      'assets/images/shoes/kids_shoe/kid_s3.png',
      'Nike',
      9999,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      1
    ),

    ProductSneakersModel(
      '1',
      'assets/images/shoes/kids_shoe/kid_s4.png',
      'Reebok',
      899,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      2
    ),
    ProductSneakersModel(
      '1',
      'assets/images/shoes/kids_shoe/kid_s5.png',
      'Fila',
      799,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      1
    ),
    ProductSneakersModel(
      '1',
      'assets/images/shoes/kids_shoe/kid_s6.png',
      'Asics',
      9999,
      "Men's shoes",
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      2
    ),

    ProductSneakersModel(
      '1',
      'assets/images/shoes/kids_shoe/kid_s7.png',
      'Converse',
      799,
      'Kids shoes',
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      1
    ),
    ProductSneakersModel(
      '1',
      'assets/images/shoes/kids_shoe/kid_s8.png',
      'Gucci',
      9999,
      'kids shoes',
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      1
    ),
    ProductSneakersModel(
      '1',
      'assets/images/shoes/kids_shoe/kid_s99.png',
      'Skechers',
      799,
      'Kids shoes',
      "Put some pep in your step with the adidas",
      "Adidas Running Shoes With Cooling Ventilations",
      2
    ),
  ];
}
