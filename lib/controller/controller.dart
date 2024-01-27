import 'package:get/get.dart';
import 'package:videoplayer_task/model/test.dart';
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
      Temperatures videoModel = await ApiService.fetchVideos();
      print(videoModel.pageSize);

      videoList.value = videoModel.results;
    } catch (error) {
      print("Error: $error");
    }
  }
}