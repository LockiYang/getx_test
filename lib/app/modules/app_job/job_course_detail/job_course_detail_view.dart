import 'package:bruno/bruno.dart';
import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_test/app/common/getx/getz_view_binding.dart';
import 'package:getx_test/app/common/styles/stylez.dart';
import 'package:getx_test/app/common/styles/theme_constants.dart';
import 'package:getx_test/app/modules/app_job/job_course_detail/job_course_detail_binding.dart';

import '../../../common/widgets/fijkplayer/fijkplayer_skin.dart';
import '../../test/custom_icon/widgets/antd_icons.dart';
import 'job_course_detail_controller.dart';

class JobCourseDetailView extends GetzViewBindng<JobCourseDetailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildPlayer(),
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildHeader(),
                      Container(
                          alignment: Alignment.topLeft,
                          width: double.infinity,
                          margin: EdgeInsets.only(
                              bottom: ThemeConstants.vSpacingMd),
                          padding: EdgeInsets.all(ThemeConstants.vSpacingMd),
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '课程介绍',
                                style: Stylez.textSubHead,
                              ),
                              Text(
                                '【报名须知】\n1、没有电脑，请勿报名!\n2、未满18岁，请勿报名!\n3、对设计与平面设计感兴趣!\n【课程讲解内容】\n第一部分：软件介绍、学习版本的选择、以及学习方向定位。\n第二部分：图层使用方法，文件打开保存的方法，注意事项。\n第三部分：工具的讲解，以及使用方法。\n第四部分：调色，滤镜等讲解\n第五部分：抠图\n第六部分：实例部分\n第七部分：动画制作\n第八部分：实战综合讲解\n【报名须知】\n1、没有电脑，请勿报名!\n2、未满18岁，请勿报名!\n3、对设计与平面设计感兴趣!\n【课程讲解内容】\n第一部分：软件介绍、学习版本的选择、以及学习方向定位。\n第二部分：图层使用方法，文件打开保存的方法，注意事项。\n第三部分：工具的讲解，以及使用方法。\n第四部分：调色，滤镜等讲解\n第五部分：抠图\n第六部分：实例部分\n第七部分：动画制作\n第八部分：实战综合讲解\n',
                                style: Stylez.textBase,
                              ),
                            ],
                          )),
                      Container(
                          alignment: Alignment.topLeft,
                          width: double.infinity,
                          margin: EdgeInsets.only(
                              bottom: ThemeConstants.vSpacingMd),
                          padding: EdgeInsets.all(ThemeConstants.vSpacingMd),
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '讲师介绍',
                                style: Stylez.textSubHead,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                width: double.infinity,
                                margin: EdgeInsets.only(
                                    top: ThemeConstants.vSpacingMd),
                                padding: EdgeInsets.symmetric(
                                    vertical: ThemeConstants.vSpacingXs,
                                    horizontal: ThemeConstants.hSpacingMd),
                                decoration: BoxDecoration(
                                    color: ThemeConstants.fillBody,
                                    borderRadius: BorderRadius.circular(
                                        ThemeConstants.radiusMd)),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '霍尔老师',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            BrnStateTag(
                                              tagText: '金牌讲师',
                                              tagState: TagState.waiting,
                                            ),
                                          ],
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          child: Image(
                                            image: AssetImage(
                                                "assets/images/customer.jpg"),
                                            width: 40,
                                            height: 40,
                                          ),
                                        )
                                      ],
                                    ),
                                    Spacez.vSpacezXs,
                                    Dividerz.divider1,
                                    Spacez.vSpacezXs,
                                    Text(
                                      '祖籍江苏省苏州市吴江区震泽镇，生于上海，中国篮球运动员，曾为中国国家篮球队队员，曾效力于中国篮球职业联赛上海大鲨鱼篮球俱乐部和美国国家篮球协会休斯敦火箭，外号“移动长城”。现任中国篮球协会主席。',
                                      style: Stylez.textCaption,
                                    )
                                  ],
                                ),
                              ),
                              Spacez.vSpacezMd,
                              Text(
                                '授课机构',
                                style: Stylez.textSubHead,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                width: double.infinity,
                                margin: EdgeInsets.only(
                                    top: ThemeConstants.vSpacingMd),
                                padding: EdgeInsets.symmetric(
                                    vertical: ThemeConstants.vSpacingXs,
                                    horizontal: ThemeConstants.hSpacingMd),
                                decoration: BoxDecoration(
                                    color: ThemeConstants.fillBody,
                                    borderRadius: BorderRadius.circular(
                                        ThemeConstants.radiusMd)),
                                child: Row(
                                  children: [
                                    Icon(
                                      AntdIcons.BatchFolding,
                                      size: 20,
                                    ),
                                    Spacez.hSpacezSm,
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '看点设计',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          '擅长设计，师资雄厚',
                                          style: Stylez.textCaption,
                                        )
                                      ],
                                    )),
                                    Icon(
                                      AntdIcons.right,
                                      size: 16,
                                      color: ThemeConstants.colorTextHint,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                      Container(
                          alignment: Alignment.topLeft,
                          width: double.infinity,
                          margin: EdgeInsets.only(
                              bottom: ThemeConstants.vSpacingMd),
                          padding: EdgeInsets.all(ThemeConstants.vSpacingMd),
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              Text(
                                '大家都在看',
                                style: Stylez.textSubHead,
                              ),
                            ],
                          )),

                      // SizedBox(
                      //   // width: 50,
                      //   // height: double.infinity,
                      //   child: Stack(
                      //     children: [
                      //       Positioned(
                      //         left: 0,
                      //         child: CircleAvatar(
                      //           child: Image(
                      //             image: AssetImage("assets/images/customer.jpg"),
                      //             width: 50,
                      //             height: 50,
                      //           ),
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildHeader() {
    return Container(
      alignment: Alignment.topLeft,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: ThemeConstants.vSpacingMd),
      padding: EdgeInsets.all(ThemeConstants.vSpacingMd),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          '0基础免费P图 接单赚钱',
          style: Stylez.textHead,
        ),
        SizedBox(
          height: 4,
        ),
        Wrap(
          spacing: ThemeConstants.hSpacingXs,
          runSpacing: ThemeConstants.hSpacingXs,
          children: [
            BrnStateTag(
              tagText: '非常好',
              tagState: TagState.succeed,
            ),
            BrnStateTag(
              tagText: '前景高',
              tagState: TagState.failed,
            ),
            BrnStateTag(
              tagText: '轻松在家',
              tagState: TagState.running,
            ),
          ],
        ),
        Spacez.vSpacezSm,
        Dividerz.divider1,
        Container(
          alignment: Alignment.topLeft,
          width: double.infinity,
          margin: EdgeInsets.only(top: ThemeConstants.vSpacingMd),
          padding: EdgeInsets.symmetric(
              vertical: ThemeConstants.vSpacingXs,
              horizontal: ThemeConstants.hSpacingMd),
          decoration: BoxDecoration(
              color: ThemeConstants.fillBody,
              borderRadius: BorderRadius.circular(ThemeConstants.radiusMd)),
          child: Row(
            children: [
              Icon(
                AntdIcons.BatchFolding,
                size: 20,
              ),
              Spacez.hSpacezSm,
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '免费领取资料',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '100G PS设计学习包',
                    style: Stylez.textCaption,
                  )
                ],
              )),
              Icon(
                AntdIcons.right,
                size: 16,
                color: ThemeConstants.colorTextHint,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          width: double.infinity,
          margin: EdgeInsets.only(top: ThemeConstants.vSpacingMd),
          padding: EdgeInsets.symmetric(
              vertical: ThemeConstants.vSpacingXs,
              horizontal: ThemeConstants.hSpacingMd),
          decoration: BoxDecoration(
              color: ThemeConstants.fillBody,
              borderRadius: BorderRadius.circular(ThemeConstants.radiusMd)),
          child: Row(
            children: [
              Icon(
                AntdIcons.wechatFill,
                size: 20,
              ),
              Spacez.hSpacezSm,
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '兼职接单群',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '学成可做兼职，收入可达800/天',
                    style: Stylez.textCaption,
                  )
                ],
              )),
              Icon(
                AntdIcons.right,
                size: 16,
                color: ThemeConstants.colorTextHint,
              ),
            ],
          ),
        )
        // Row(
        //   children: [
        //     AvatarStack(
        //       num: 10,
        //       size: 16,
        //       offset: 10,
        //     ),
        //     Text(
        //       '已有30123人报名',
        //       style: Stylez.textCaption,
        //     )
        //   ],
        // ),
      ]),
    );
  }

  Container _buildPlayer() {
    return Container(
      height: controller.playerBoxWidth,
      // color: Colors.black,
      child: !controller.isInitAnimition
          ? Container(
              height: controller.playerBoxWidth,
              color: Colors.black,
            )
          : FijkView(
              height: controller.playerBoxWidth,
              color: Colors.black,
              fit: FijkFit.cover,
              player: controller.player,
              panelBuilder: (
                FijkPlayer player,
                FijkData data,
                BuildContext context,
                Size viewSize,
                Rect texturePos,
              ) {
                /// 使用自定义的布局
                return CustomFijkPanel(
                  player: player,
                  viewSize: viewSize,
                  texturePos: texturePos,
                  pageContent: context,
                  showConfig: controller.vSkinCfg,
                  curPlayUrl: controller.curPlayUrl ?? "",
                );
              },
            ),
    );
  }

  @override
  Bindings? binding() {
    return JobCourseDetailBinding();
  }
}