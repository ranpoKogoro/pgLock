;=========================================
; CG モード　画面作成
;=========================================

@layopt layer=message0 visible=false
;メッセージレイヤ非表示

@clearfix
;fixレイヤーをクリアにする
[hidemenubutton]
[cm]
;全てのメッセージレイヤをクリアにする。

[bg storage="../../tyrano/images/system/bg_base.png" time=100]
;イメージバックを表示
[layopt layer=1 visible=true]

[image layer=1 left=0 top=0 storage="config/label_cg.png" folder="image" ]
;左上端を起点として、イメージ画像をレイヤー１に表示。
[iscript]
    
    tf.page = 0;
    tf.selected_cg_image = ""; //選択されたCGを一時的に保管
    ;javascript関数にアクセス
[endscript]



*cgpage
[layopt layer=1 visible=true]

[cm]
[button graphic="config/menu_button_close.png" enterimg="config/menu_button_close2.png"  target="*backtitle" x=820 y=20 ]
;戻るボタンを右上 x=820 y=20の位置に配置。選択すると下記backtitleへ移動する。

[iscript]
    tf.tmp_index = 0;
    tf.cg_index = 12 * tf.page;
    tf.top = 100;
    tf.left = 60;
    
[endscript]

[iscript]
	tf.target_page = "page_"+tf.page;
[endscript]

*cgview
@jump target=&tf.target_page

*page_0
;ここにCGが保管される？
[cg_image_button graphic="rouka.jpg,room.jpg,title.png" no_graphic="../../tyrano/images/system/noimage.png" x=60 y=130 width=160 height=140 folder="bgimage" ]
[cg_image_button graphic="room.jpg" no_graphic="../../tyrano/images/system/noimage.png" x=250 y=130 width=160 height=140 folder="bgimage" ]


@jump target="*common"

*common


*endpage



[s]

*backtitle
[cm]
[freeimage layer=1]
@jump storage=title.ks

*nextpage
[emb exp="tf.page++;"]
@jump target="*cgpage"


*backpage
[emb exp="tf.page--;"]
@jump target="*cgpage"

*clickcg
[cm]

[layopt layer=1 visible=false]

[eval exp="tf.cg_index=0"]

*cg_next_image

[image storage=&tf.selected_cg_image[tf.cg_index] folder="bgimage"  ]
[l]
[bg storage="../../tyrano/images/system/bg_base.png" time=10]

[eval exp="tf.cg_index++"]

;expで示された式を評価します。変数への値の代入などに使用されます。
;exp には任意の TJS(JS) 式を指定できるので、TJS(JS) として有効な式であれば 何でも評価できます。
;[eval exp="f.test=500"]
;↑ゲーム変数 test に数値を代入している
;[eval exp="f.test2='文字列'"]
;↑ゲーム変数 test2 に文字列を代入している
;[eval exp="sf.test=400"]
;↑システム変数 test に数値を代入している
;[eval exp="f.test2=f.test*3"]
;↑ゲーム変数 test2 に ゲーム変数 test の 3 倍の数値を代入している

@jump target="cg_next_image" cond="tf.selected_cg_image.length > tf.cg_index"


@jump  target=*cgpage
[s]

*no_image

@jump  target=*cgpage



