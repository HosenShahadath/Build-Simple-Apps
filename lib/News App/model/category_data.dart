import 'new_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> categories = [];

  CategoryModel categoryModel = CategoryModel();
  categoryModel.categoryName = "Science";
  categories.add(categoryModel);

  categoryModel =CategoryModel();
  categoryModel.categoryName = "Sports";
  categories.add(categoryModel);

  categoryModel =CategoryModel();
  categoryModel.categoryName = "Business";
  categories.add(categoryModel);

  categoryModel =CategoryModel();
  categoryModel.categoryName = "General";
  categories.add(categoryModel);

  categoryModel =CategoryModel();
  categoryModel.categoryName = "Entertainment";
  categories.add(categoryModel);

  return categories;

}