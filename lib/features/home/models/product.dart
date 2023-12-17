class ProductModel {
  final int id;
  final int price;
  final String name;
  final String description;
  final String brandName;
  final String image;
  final double rating;
  final List<String> moreImage;
  ProductModel(
      {required this.id,
        required this.moreImage,
        required this.name,
        required this.description,
        required this.brandName,
        required this.image,
        required this.price,
        required this.rating});

}

class ProductProperty {
  final String property;
  final String value;

  ProductProperty(this.property, this.value);
}

























class Product{
  final String image;
  Product(this.image);
}


List<Product> imageList = [
  Product('assets/images/shoes1.jpg'),
  Product('assets/images/shoes2.jpg'),
  Product('assets/images/shoes3.jpg'),
];