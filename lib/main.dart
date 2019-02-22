import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_hello/components/GameStage.dart';
import 'package:flutter_hello/model/GameStatus.dart';
import './components/ViewScaffold.dart';

void main() => runApp(MyApp());

/* ************************************************************
 * 思路:
 * 1.根据游戏模式构建数据矩阵
 * 2.每个块作为一个对象处理数值变化
 * 3.块的数值变化产生一个事件，输出变化的初始状态和结束状态
 * 4.单独用动画组件响应事件画出对象和动画
 * ************************************************************/

class MyApp extends StatelessWidget {
  final GameStatus status = new GameStatus();

  @override
  Widget build(BuildContext context) {
    initGame();

    return ViewScaffold(
      children: <Widget>[
        GameStage(status: status),
      ],
    );
  }

  initGame() {
    status.adds = 0;
    status.moves = 0;
    status.scores = 0;

    var random = new Random();
    var gamesize = status.gameType * status.gameType - 1;
    var block1 = random.nextInt(gamesize);
    var block2 = random.nextInt(gamesize);

    while (block1 == block2) {
      block2 = random.nextInt(gamesize);
    }
  }
}