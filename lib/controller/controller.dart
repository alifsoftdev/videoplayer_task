import 'package:get/get.dart';
import '../model/videomodel.dart';
import '../service/video_service.dart';

class VideoController extends GetxController {
  var videoList = <Result>[].obs;
  @override
  void onInit() {
    super.onInit();
    fetchVideos();
  }

  void fetchVideos() async {
    try {
      print("y");
      VideoModel videoModel = await ApiService.fetchVideos();
      print("y");

      videoList.value = videoModel.results;
    } catch (error) {
      print("Error: $error");
    }
  }
}
