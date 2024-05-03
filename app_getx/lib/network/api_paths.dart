class ApiPaths {
  static String baseUrl = 'https://services.hanselandpetal.com';
  static String flowers = '/feeds/flowers.json';

  static String getPicture(String flowerName) => '$baseUrl/photos/$flowerName';
}
