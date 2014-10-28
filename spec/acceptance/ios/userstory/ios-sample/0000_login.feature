# encoding: utf-8
# language: ja

機能: 0000. feature sample for ios

  @sample_scenario
  シナリオアウトライン: scenario outline
  descriptions
    前提 <device> で試験を行う
    * <user_status> ユーザでログインする
    * スクリーンショットを <screenshot> という名前で撮る

  例:
    | device   | user_status | screenshot |
    | 'iphone' | 'userA'     | 'A'         |
    | 'ipad'   | 'userB'     | 'B'         |
