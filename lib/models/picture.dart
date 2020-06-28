// pictures on the device
class Picture {
  // name of picture
  final String pictureName;
  // category of picture
  final String pictureCategory;
  // path of picture
  final String picturePath;

  Picture({this.pictureName, this.pictureCategory, this.picturePath});

  // list of available picture
  static List<Picture> pictureList = [

    // dummy data goes here
  ];

  // list of picture category
  static List<String> pictureCategoryList = [
    'Camera',
    'Email',
    'Downloads',
    'Facebook',
  ];
}
