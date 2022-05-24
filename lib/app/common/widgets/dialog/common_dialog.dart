import 'package:flutter/material.dart';
import 'package:getx_test/app/common/no_splash_factory.dart';
import 'package:getx_test/app/common/styles/zstyle_constants.dart';
import 'package:getx_test/app/common/utils/dialog_util.dart';
import 'package:getx_test/app/common/widgets/button/basic_button.dart';
import 'package:getx_test/app/common/widgets/dialog/base_dialog.dart';

import '../../styles/zstyle.dart';

/// 公共加载弹窗
class CommonDialog extends StatelessWidget {
  ///标题
  final String title;

  ///内容
  final String content;

  ///左侧文字
  final String backText;

  ///右侧文字
  final String nextText;

  ///左侧事件
  final VoidCallback? backTap;

  ///右侧事件
  final VoidCallback? nextTap;

  ///左侧是否隐藏
  final bool backVisible;

  ///右侧是否隐藏
  final bool nextVisible;

  final Widget? tipWidget;

  final Widget? contentWidget;

  final bool isNotice;

  CommonDialog(
      {Key? key,
      this.title = '',
      this.content = '',
      this.backText = '',
      this.nextText = '',
      this.backVisible = true,
      this.nextVisible = true,
      this.backTap,
      this.nextTap,
      this.tipWidget,
      this.contentWidget,
      this.isNotice = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseDialog(
      child: Column(
        children: <Widget>[
          // 内容
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                tipWidget == null ? Container() : tipWidget!,
                Text(
                  title,
                  style: ZStyle.textHead,
                ),
                contentWidget == null
                    ? Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          content,
                          style: TextStyle(
                              color: ZStyleConstans.colorTextSecondary),
                        ),
                      )
                    : contentWidget!,
              ],
            ),
          ),
          isNotice ? _buildNoticeButtom() : _buildNormalButtom()
        ],
      ),
    );
  }

  Container _buildNoticeButtom() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              DialogUtil.dismiss();
              if (backTap != null) {
                backTap!();
              }
            },
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  backText,
                  style: TextStyle(color: ZStyleConstans.colorTextSecondary),
                )),
          ),
          BasicButtom(
            text: nextText,
            onTap: () {
              DialogUtil.dismiss();
              if (nextTap != null) {
                nextTap!();
              }
            },
            alignment: Alignment.center,
            borderRadius: BorderRadius.circular(100),
          )
        ],
      ),
    );
  }

  Column _buildNormalButtom() {
    return Column(
      children: [
        Dividerz.dividerH1,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ///对半分
            _buildTextButton(backTap, backText, backVisible,
                TextStyle(color: ZStyleConstans.colorTextBase, fontSize: 16)),
            backVisible && nextVisible
                ? Container(
                    width: 0.5,
                    height: 60,
                    color: ZStyleConstans.borderColorBase,
                  )
                : Container(),
            _buildTextButton(nextTap, nextText, nextVisible,
                TextStyle(color: ZStyleConstans.brandPrimary, fontSize: 16))
          ],
        ),
      ],
    );
  }

  ///此处使用方法重新创建的原因是因为此处不需要频繁更新，不会造成过度创建
  _buildTextButton(VoidCallback? tap, String text, bool show, TextStyle style) {
    return Visibility(
        visible: show,
        child: Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                DialogUtil.dismiss();
                if (tap != null) {
                  tap();
                }
              },
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
                  splashFactory: NoSplashFactory()),
              child: Container(
                alignment: Alignment.center,
                height: 60,
                child: Text(
                  text,
                  style: style,
                ),
              ),
            )));
  }
}
