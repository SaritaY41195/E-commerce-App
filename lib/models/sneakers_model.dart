class SneakeersModel {
  String? id;
  String? name;
  String? category;
  String? price;
  String? oldPrice;
  List<String>? imageUrl;
  List<Sizes>? sizes;
  String? description;
  String? title;

  SneakeersModel(
      {this.id,
        this.name,
        this.category,
        this.price,
        this.oldPrice,
        this.imageUrl,
        this.sizes,
        this.description,
        this.title});

  SneakeersModel.fromJson(Map<String, dynamic> json) {
    id = json[' id '];
    name = json[' name '];
    category = json[' category '];
    price = json[' price '];
    oldPrice = json['oldPrice '];
    imageUrl = json[' imageUrl '].cast<String>();
    if (json[' sizes '] != null) {
      sizes = <Sizes>[];
      json[' sizes '].forEach((v) {
        sizes!.add(new Sizes.fromJson(v));
      });
    }
    description = json[' description '];
    title = json[' title '];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data[' id '] = this.id;
    data[' name '] = this.name;
    data[' category '] = this.category;
    data[' price '] = this.price;
    data['oldPrice '] = this.oldPrice;
    data[' imageUrl '] = this.imageUrl;
    if (this.sizes != null) {
      data[' sizes '] = this.sizes!.map((v) => v.toJson()).toList();
    }
    data[' description '] = this.description;
    data[' title '] = this.title;
    return data;
  }
}

class Sizes {
  String? size;
  bool? isSelected;

  Sizes({this.size, this.isSelected});

  Sizes.fromJson(Map<String, dynamic> json) {
    size = json[' size '];
    isSelected = json[' isSelected '];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data[' size '] = this.size;
    data[' isSelected '] = this.isSelected;
    return data;
  }
}