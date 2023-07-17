class AllFoodsModel {
  int? status;
  List<Foods>? foods;
  List<Images>? images;
  String? message;

  AllFoodsModel({this.status, this.foods, this.images, this.message});

  AllFoodsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['foods'] != null) {
      foods = <Foods>[];
      json['foods'].forEach((v) {
        foods!.add(new Foods.fromJson(v));
      });
    }
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(new Images.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.foods != null) {
      data['foods'] = this.foods!.map((v) => v.toJson()).toList();
    }
    if (this.images != null) {
      data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class Foods {
  int? foodId;
  int? categoryId;
  String? name;
  String? description;
  int? price;
  int? quantity;
  String? isAvailable;
  String? lastRestokedAt;
  String? createdAt;
  String? updatedAt;

  Foods(
      {this.foodId,
      this.categoryId,
      this.name,
      this.description,
      this.price,
      this.quantity,
      this.isAvailable,
      this.lastRestokedAt,
      this.createdAt,
      this.updatedAt});

  Foods.fromJson(Map<String, dynamic> json) {
    foodId = json['food_id'];
    categoryId = json['category_id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    quantity = json['quantity'];
    isAvailable = json['is_available'];
    lastRestokedAt = json['lastRestokedAt'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['food_id'] = this.foodId;
    data['category_id'] = this.categoryId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['quantity'] = this.quantity;
    data['is_available'] = this.isAvailable;
    data['lastRestokedAt'] = this.lastRestokedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Images {
  int? id;
  int? foodId;
  String? path;
  String? createdAt;
  String? updatedAt;

  Images({this.id, this.foodId, this.path, this.createdAt, this.updatedAt});

  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    foodId = json['food_id'];
    path = json['path'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['food_id'] = this.foodId;
    data['path'] = this.path;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
