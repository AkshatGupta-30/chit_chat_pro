import 'package:chit_chat_pro/src/controllers/chat_controller.dart';
import 'package:chit_chat_pro/src/pages/main_view.dart';
import 'package:chit_chat_pro/src/pages/bottom_view.dart';
import 'package:circular_countdown/circular_countdown.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _body(),
      resizeToAvoidBottomInset: true,
    );
  }

  AppBar _appBar(BuildContext context) {
    final controller = Get.find<ChatController>();
    return AppBar(
      title: const Text('Chit Chat Pro'),
      actions: [
        Obx(() => CircularCountdown(
          diameter: 30, gapFactor: 3,
          countdownTotal: 21, countdownRemaining: controller.countdown.value,
          countdownTotalColor: Colors.grey, countdownCurrentColor: Colors.orangeAccent,
          countdownRemainingColor: Colors.red, textStyle: Theme.of(context).primaryTextTheme.bodySmall,
        )),
        const Gap(10)
      ],
    );
  }

  Column _body() {
    return Column(children: [const Gap(12), PromptView(), const Gap(2), BottomView()]);
  }
}