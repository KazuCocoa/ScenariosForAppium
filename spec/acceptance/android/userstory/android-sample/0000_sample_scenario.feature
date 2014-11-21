# language: ja

機能: 0000. feature sample
  シナリオアウトライン: scenario outline
  descriptions
    前提 <device> で試験を行う
    * <user_status> ユーザでログインする
    * スクリーンショットを <screenshot1> という名前で撮る

  例:
    | device   | user_status | screenshot1 |
    | 'android'| 'userA'     | 'A'         |
    | 'android'| 'userB'     | 'B'         |
