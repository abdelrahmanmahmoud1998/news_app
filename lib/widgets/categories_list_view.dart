import 'package:flutter/material.dart';
import 'package:news_app/constants/images/images_assets.dart';
import 'package:news_app/model/caregory_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(image: AssetsImages.imagesBusiness, categoryName: 'Business'),
    CategoryModel(
        image: AssetsImages.imagesEntertaiment, categoryName: 'Entertainment'),
    CategoryModel(image: AssetsImages.imagesHealth, categoryName: 'Health'),
    CategoryModel(image: AssetsImages.imagesScience, categoryName: 'Science'),
    CategoryModel(image: AssetsImages.imagesSports, categoryName: 'Sports'),
    CategoryModel(
        image: AssetsImages.imagesTechnology, categoryName: 'Technology'),
    CategoryModel(image: AssetsImages.imagesGeneral, categoryName: 'General'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: ((context, index) =>
            CategoryCard(category: categories[index])),
      ),
    );
  }
}
