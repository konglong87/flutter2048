import 'package:flutter2048/store/GameState.dart';

class MoveRightAction {}

GameState moveRight(GameState state, MoveRightAction action) {
  print('** moveright');
  return GameState(status: state.status, data: state.data, mode: state.mode);
}
