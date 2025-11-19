const keyId = 'id';
const keyName = 'pizzaName';
const keyDesc = 'description';
const keyPrice = 'price';
const keyImage = 'imageUrl';

class Pizza {
  final int id;
  final String pizzaName;
  final String description;
  final double price;
  final String imageUrl;

  Pizza.fromJson(Map<String, dynamic> json) :
    id = int.tryParse(json[keyId].toString()) ?? 0,
    pizzaName = json[keyName] != null ? json[keyName].toString() : 'No Name',
    description = json[keyDesc] != null ?  json[keyDesc].toString() : 'No Desc',
    price = double.tryParse(json[keyPrice].toString()) ?? 0,
    imageUrl = json[keyImage] != null ?  json[keyImage].toString() : 'Image not found';
  
  Map<String, dynamic> toJson() {
    return {
      keyId: id,
      keyName: pizzaName,
      keyDesc: description,
      keyPrice: price,
      keyImage: imageUrl,
    };
  }
}