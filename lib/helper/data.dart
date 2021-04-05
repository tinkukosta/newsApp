import 'package:newsapp/models/categorie_model.dart';

List<CategoryModel> getCategories(){

  List<CategoryModel> category = new List<CategoryModel>();


  //0000
  CategoryModel categoryModel = new  CategoryModel();
  categoryModel.categoryName = "Business";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1491336477066-31156b5e4f35?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=804444444444444444444444444";
  category.add(categoryModel);

  //0010
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Entertainment";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1603190287605-e6ade32fa852?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDB8fGVudGVydGFpbm1lbnR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  category.add(categoryModel);

  //0011
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "General";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1523995462485-3d171b5c8fa9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8bmV3cyUyMGFwcGVyfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  category.add(categoryModel);


  //0100
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Health";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1538333702852-c1b7a2a93001?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80";
  category.add(categoryModel);

  //0101
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Science";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1502989642968-94fbdc9eace4?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=634&q=80";
  category.add(categoryModel);

  //0110
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Sports";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1461896836934-ffe607ba8211?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c3BvcnRzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60";
  category.add(categoryModel);

  //0111
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Technology";
  categoryModel.imageUrl = "https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80";
  category.add(categoryModel);

  return category;
}