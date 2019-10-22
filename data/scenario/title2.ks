
[cm]
;cm---すべてのメッセージレイヤをクリア
;フォントスタイルもデフォルトの設定に戻る。

*start

[button x=120 y=300 width=450 graphic="title/button_hajimeru.png" enterimg="title/hajimeruK.png" hint="ゲームを始めます" enterse="cursor2.ogg" clickse="decision7.ogg" target="gamestart"]
;スタートボタンの配置。これを押すとgamestartに飛ぶ。
;enterimg--カーソルを乗せたときに表示する画像
;hint--カーソルを乗せたときの説明
;enterse--カーソルを乗せたときの効果音
;ckicse--選択したときの効果音
[button x=120 y=450 width=450 graphic="title/button_tudukikara.png" enterimg="title/tudukikaraK.png" hint="続きから出来ます" enterse="cursor2.ogg" clickse="decision7.ogg" role="load" ]
;role--ボタンに特別な機能を割り当てることができます。この場合storageやtargetは無視されます。強制的にfix属性がtrueになります。指定できる文字列はsave(セーブ画面を表示します)。
;load(ロード画面を表示します)。title(タイトル画面に戻ります)。menu(メニュー画面を表示します)。window(メッセージウィンドウを非表示にします)。
;skip(スキップの実行)。backlog（過去ログを表示）。fullscreen(フルスクリーン切り替え)。quicksave(クイックセーブ実行)。
;quickload(クイックロード実行)。auto（オート開始）。sleepgame（ゲームの状態を保存してジャンプ）
;[button x=170 y=460 width=300 graphic="title/button_cgg.png" enterimg="title/button_cggK.png" hint="CGが見れます" enterse="cursor2.ogg" clickse="decision7.ogg" storage="cg.ks" ]
;strage--ジャンプ先のシナリオファイルを指定します。省略すると、現在 のシナリオファイル内であると見なされます。
;[button x=40 y=530 width=300 graphic="title/button_kaiso.png" enterimg="title/button_kaisoK.png" hint="回想が見れます" enterse="cursor2.ogg" clickse="decision7.ogg" storage="replay.ks" ]
;[button x=330 y=530 width=300 graphic="title/button_configu.png" role="sleepgame" enterimg="title/button_configuK.png" hint="コンフィグを開けます" enterse="cursor2.ogg" clickse="decision7.ogg" storage="config.ks" ]

[s]
;s--シナリオ実行を止める

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene1.ks"
