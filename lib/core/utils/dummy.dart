


import 'package:slash_task/core/constant/constant.dart';
import 'package:slash_task/features/home/models/product.dart';
import 'package:slash_task/generated/assets.dart';

List<ProductModel> productDummyList = [
  ProductModel(
    id: 1,
    name: 'Jacket',
    description: descriptionJacket,
    image: Assets.imagesJacket1,
    price: 80,
    rating: 5,
    moreImage: [
      Assets.imagesJacket1,
      Assets.imagesJacket2,
      Assets.imagesJacket3,
    ], brandName: 'zara',),
  ProductModel(
      id: 2,
      name: 'modern shoes',
      description: descriptionShoes,
      image: Assets.imagesShoes2,
      price: 50,
      rating: 5,
      moreImage: [
        Assets.imagesShoes2,
        Assets.imagesShoes1,
        Assets.imagesShoes3,
      ], brandName:Assets.imagesLogo,),
  ProductModel(
      id: 3,
      name: 'nike shoes',
      description: descriptionShoes,
      image: Assets.imagesShoes1,
      price: 60,
      rating: 2,
      moreImage: [
        Assets.imagesShoes1,
        Assets.imagesShoes2,
        Assets.imagesShoes3,
      ], brandName: Assets.imagesLogo,),
  ProductModel(
      id: 4,
      name: 'hand watch',
      description: descriptionWatch,
      image: Assets.imagesWatch1,
      price: 1500,
      rating: 4,
      moreImage: [
        Assets.imagesWatch1,
        Assets.imagesWatch2,
        Assets.imagesWatch3,
      ], brandName: Assets.imagesLogo,),

  ProductModel(
    id: 4,
    name: 'hand watch',
    description: descriptionWatch,
    image: Assets.imagesWatch2,
    price: 1500,
    rating: 4,
    moreImage: [
      Assets.imagesWatch2,
      Assets.imagesWatch1,
      Assets.imagesWatch3,
    ], brandName: Assets.imagesLogo,),


  ProductModel(
    id: 3,
    name: 'nike shoes',
    description: descriptionShoes,
    image: Assets.imagesShoes3,
    price: 60,
    rating: 2,
    moreImage: [
      Assets.imagesShoes3,
      Assets.imagesShoes2,
      Assets.imagesShoes1,
    ], brandName: Assets.imagesLogo,),


  ProductModel(
    id: 1,
    name: 'Jacket',
    description: descriptionJacket,
    image: Assets.imagesJacket3,
    price: 80,
    rating: 5,
    moreImage: [
      Assets.imagesJacket3,
      Assets.imagesJacket2,
      Assets.imagesJacket1,
    ], brandName: 'zara',),

  ProductModel(
    id: 2,
    name: 'modern shoes',
    description: descriptionShoes,
    image: Assets.imagesShoes2,
    price: 50,
    rating: 5,
    moreImage: [
      Assets.imagesShoes2,
      Assets.imagesShoes1,
      Assets.imagesShoes3,
    ], brandName:Assets.imagesLogo,),
];