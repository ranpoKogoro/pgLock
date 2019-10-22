
[cm]
;cm---すべてのメッセージレイヤをクリア
;フォントスタイルもデフォルトの設定に戻る。
;ただし、positionやlayoptで指定した値は引き継がれる。


@clearstack
;システムが管理するスタックを消去します。
;スタックとはゲームを進める中で Call、マクロ呼び出し,if文などを通過した時に
;呼び出し元に帰ってくるために保持するメモリ領域です。
;Call の途中でジャンプ。if文の中でジャンプ
;などを繰り返した場合、回収されないスタックが溜まっていきます。
;これらは、セーブデータの肥大化などを引き起こす場合ばあるので
;戻るべきスタックが無い場面でこのタグを配置しておくことをオススメします。
;きりの良い場所などです。（タイトル 章の始まり）
@bg storage ="pgMissTitle.gif" time=100
;bg-－背景の切り替え。time切り替え時間をミリ秒指定。waitはそれまで処理を待つ
;cross指定でtrue or false を指定します。デフォルトはfalse。trueを指定すると２つの画像が
;同じタイミングで透明になりながら入れ替わります。falseを指定すると、古い背景を残しながら
;上に重なる形で新しい背景を表示します。CG差分などで使用する場合はfalseが良いでしょう。
;method指定で、「crossfade」「explode」「slide」「blind」「bounce」「clip」「drop」「fold」「puff」「scale」「shake」「size」
;の切り替えタイプを選択できるデフォルトはfadeln
@wait time = 200

*start

[button x=120 y=300 width=450 graphic="title/push.png" enterimg="title/push2.png" hint="ゲームを始めるには押してください" enterse="cursor2.ogg" clickse="decision7.ogg" target="gamestart"]
;スタートボタンの配置。これを押すとgamestartに飛ぶ。
;enterimg--カーソルを乗せたときに表示する画像
;hint--カーソルを乗せたときの説明
;enterse--カーソルを乗せたときの効果音
;ckicse--選択したときの効果音
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
@jump storage="title2.ks"
