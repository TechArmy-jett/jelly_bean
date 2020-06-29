// videos on the device
class Video {
  // name of video
  final String videoName;
  // category of video
  final String videoCategory;
  // path of video
  final String videoPath;

  Video({this.videoName, this.videoCategory, this.videoPath});

  // list of available video
  static List<Video> pictureList = [

    // dummy data goes here
  ];

  // list of picture category
  static List<String> pictureCategoryList = [
    'Camera',
    'Email',
    'Downloads',
    'Facebook',
    'Youtube',
  ];
}
