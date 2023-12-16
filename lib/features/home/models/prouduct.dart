// class Product {
//   final int id;
//   final String name;
//   final String description;
//   final int brandId;
//   final String? brandName;
//   final String? brandLogoUrl;
//   final double rating;
//   final List<ProductVariation> variations;
//   final List<ProductProperty> availableProperties;//What properties are offered //(multiple colors or non, multiple sizes or non, materials)
// }

class Product{
  final String image;
  Product(this.image);
}


List<Product> imageList = [
  Product('assets/images/shoes1.jpg'),
  Product('assets/images/shoes2.jpg'),
  Product('assets/images/shoes3.jpg'),
];