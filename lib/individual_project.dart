class IndividualProject {
  String _title = '';
  String _path_to_image = '';
  String _short_description = '';
  String _long_description = '';
  List<String> _relevant_links = [];
  List<String> _list_of_video_ids = [];

  IndividualProject(
      String title,
      String path_to_image,
      String short_description,
      String long_description,
      List<String> list_of_video_ids,
      List<String> relevant_links,) {
    _title = title;
    _path_to_image = path_to_image;
    _short_description = short_description;
    _long_description = long_description;
    _list_of_video_ids = list_of_video_ids;
    _relevant_links = relevant_links;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get path_to_image => _path_to_image;

  set path_to_image(String value) {
    _path_to_image = value;
  }

  String get short_description => _short_description;

  set short_description(String value) {
    _short_description = value;
  }

  String get long_description => _long_description;

  set long_description(String value) {
    _long_description = value;
  }

  List<String> get list_of_video_ids => _list_of_video_ids;

  set list_of_video_ids(List<String> value) {
    _list_of_video_ids = value;
  }

  List<String> get relevant_links => _relevant_links;

  set relevant_links(List<String> value) {
    _relevant_links = value;
  }
}
