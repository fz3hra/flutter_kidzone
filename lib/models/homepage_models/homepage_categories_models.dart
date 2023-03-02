class HomePageCategoriesModel {
  String categoryName,
      categoryTitle,
      categoryImage,
      categoryColor,
      categoryNameColor;
  HomePageCategoriesModel({
    required this.categoryName,
    required this.categoryTitle,
    required this.categoryImage,
    required this.categoryColor,
    required this.categoryNameColor,
  });

  static List<HomePageCategoriesModel> homepageCategoryLists = [
    HomePageCategoriesModel(
      categoryName: 'Learn',
      categoryTitle: 'Learn The 26 English\nAlphabets',
      categoryImage: 'assets/images/homepage/pen.png',
      categoryColor: '0xFFC6EB78',
      categoryNameColor: '0xFFAFC2F2',
    ),
    HomePageCategoriesModel(
      categoryName: 'Quiz',
      categoryTitle: 'Learn The Alphabets\nBy Sounds',
      categoryImage: 'assets/images/homepage/quiz1.png',
      categoryColor: '0xFFFFCE29',
      categoryNameColor: '0xFFE5AFF2',
    ),
    HomePageCategoriesModel(
      categoryName: 'Qui',
      categoryTitle: 'Learn The Alphabets\nBy Seeing',
      categoryImage: 'assets/images/homepage/quiz2.png',
      categoryColor: '0xFFAEFAFF',
      categoryNameColor: '0xFF36743C',
    ),
  ];
}
