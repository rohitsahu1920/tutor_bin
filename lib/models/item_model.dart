class MenuItems {
  final List<Cat1>? cat1;
  final List<Cat2>? cat2;
  final List<Cat3>? cat3;
  final List<Cat4>? cat4;
  final List<Cat5>? cat5;
  final List<Cat6>? cat6;

  MenuItems({
    this.cat1,
    this.cat2,
    this.cat3,
    this.cat4,
    this.cat5,
    this.cat6,
  });

  MenuItems.fromJson(Map<String, dynamic> json)
      : cat1 = (json['cat1'] as List?)?.map((dynamic e) => Cat1.fromJson(e as Map<String,dynamic>)).toList(),
        cat2 = (json['cat2'] as List?)?.map((dynamic e) => Cat2.fromJson(e as Map<String,dynamic>)).toList(),
        cat3 = (json['cat3'] as List?)?.map((dynamic e) => Cat3.fromJson(e as Map<String,dynamic>)).toList(),
        cat4 = (json['cat4'] as List?)?.map((dynamic e) => Cat4.fromJson(e as Map<String,dynamic>)).toList(),
        cat5 = (json['cat5'] as List?)?.map((dynamic e) => Cat5.fromJson(e as Map<String,dynamic>)).toList(),
        cat6 = (json['cat6'] as List?)?.map((dynamic e) => Cat6.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'cat1' : cat1?.map((e) => e.toJson()).toList(),
    'cat2' : cat2?.map((e) => e.toJson()).toList(),
    'cat3' : cat3?.map((e) => e.toJson()).toList(),
    'cat4' : cat4?.map((e) => e.toJson()).toList(),
    'cat5' : cat5?.map((e) => e.toJson()).toList(),
    'cat6' : cat6?.map((e) => e.toJson()).toList()
  };
}

class Cat1 {
  final String? name;
  final int? price;
  final bool? instock;

  Cat1({
    this.name,
    this.price,
    this.instock,
  });

  Cat1.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String?,
        price = json['price'] as int?,
        instock = json['instock'] as bool?;

  Map<String, dynamic> toJson() => {
    'name' : name,
    'price' : price,
    'instock' : instock
  };
}

class Cat2 {
  final String? name;
  final int? price;
  final bool? instock;

  Cat2({
    this.name,
    this.price,
    this.instock,
  });

  Cat2.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String?,
        price = json['price'] as int?,
        instock = json['instock'] as bool?;

  Map<String, dynamic> toJson() => {
    'name' : name,
    'price' : price,
    'instock' : instock
  };
}

class Cat3 {
  final String? name;
  final int? price;
  final bool? instock;

  Cat3({
    this.name,
    this.price,
    this.instock,
  });

  Cat3.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String?,
        price = json['price'] as int?,
        instock = json['instock'] as bool?;

  Map<String, dynamic> toJson() => {
    'name' : name,
    'price' : price,
    'instock' : instock
  };
}

class Cat4 {
  final String? name;
  final int? price;
  final bool? instock;

  Cat4({
    this.name,
    this.price,
    this.instock,
  });

  Cat4.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String?,
        price = json['price'] as int?,
        instock = json['instock'] as bool?;

  Map<String, dynamic> toJson() => {
    'name' : name,
    'price' : price,
    'instock' : instock
  };
}

class Cat5 {
  final String? name;
  final int? price;
  final bool? instock;

  Cat5({
    this.name,
    this.price,
    this.instock,
  });

  Cat5.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String?,
        price = json['price'] as int?,
        instock = json['instock'] as bool?;

  Map<String, dynamic> toJson() => {
    'name' : name,
    'price' : price,
    'instock' : instock
  };
}

class Cat6 {
  final String? name;
  final int? price;
  final bool? instock;

  Cat6({
    this.name,
    this.price,
    this.instock,
  });

  Cat6.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String?,
        price = json['price'] as int?,
        instock = json['instock'] as bool?;

  Map<String, dynamic> toJson() => {
    'name' : name,
    'price' : price,
    'instock' : instock
  };
}