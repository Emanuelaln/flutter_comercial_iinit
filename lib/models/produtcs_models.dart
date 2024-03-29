class Product {
  int? _totalSize;
  int? _typeId;
  int? _offset;
  late List<ProdutsModel> _produts;
  List<ProdutsModel> get produts => _produts;
  //List <ProdutsModel> get produts => _produts;
  // Construtor

  Product(
      {required totalSize,
      required typeId,
      required offset,
      required produts}) {
    this._totalSize = totalSize;
    this._typeId = typeId;
    this._offset = offset;
    this._produts = produts;
  }

//Validação e implementação
  Product.fromJson(Map<String, dynamic> json) {
    _totalSize = json['total_size'];
    _typeId = json['type_id'];
    _offset = json['offset'];
    if (json['produts'] != null) {
      _produts = <ProdutsModel>[];
      json['produts'].forEach((v) {
        _produts!.add(ProdutsModel.fromJson(v));
      });
    }
  }
}

class ProdutsModel {
  int? id;
  String? name;
  String? description;
  int? price;
  int? stars;
  String? img;
  String? location;
  String? createdAt;
  String? updated;
  int? typeId;

  ProdutsModel(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.stars,
      this.img,
      this.location,
      this.createdAt,
      this.updated,
      this.typeId});
//Validação e implementação de
  ProdutsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    stars = json['stars'];
    img = json['img'];
    location = json['location'];
    createdAt = json['created_at'];
    updated = json['updated'];
    typeId = json['type_id'];
  }
}
