import 'package:get/get.dart';
import 'package:getx_test/app/common/widgets/paging_controller.dart';
import '../data/project.dart';
import '../data/wan_android_api.dart';

class WaProjectController extends PagingController<Project> {
  late WanAndroidApi wanAndroidApi;

  @override
  Future<List<Project>> loadData() async {
    ProjectPage projectPage =
        await wanAndroidApi.getProjects(currentPage, fail: (exception) {
      loadStatus = 3;
      // 重试 refreshData
    });
    return projectPage.datas.map((e) => Project.fromJson(e)).toList();
  }

  @override
  void onInit() {
    super.onInit();
    wanAndroidApi = Get.find<WanAndroidApi>();
  }
}
