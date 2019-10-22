

*start

[cm  ]
[clearfix]
[start_keyconfig]

[bg storage="waitPG.jpg" method="crossfade" time="1000"]
[wait time="1000"]
[bg storage="roomOut.png" method="slide" time="1000"]
[wait time="1000"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=20 top=400 width=920 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=24 x=50 y=410]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;sadakazu
[chara_new  name="sadakazu" storage="chara/sadakazu/sadakazu.png" jname="さだかず"  ]
;キャラクターの表情登録
[chara_face name="sadakazu" face="normal" storage="chara/sadakazu/sadakazu.png"]
;[chara_face name="sadakazu" face="doki" storage="chara/akane/doki.png"]
;[chara_face name="sadakazu" face="happy" storage="chara/akane/happy.png"]
;[chara_face name="sadakazu" face="sad" storage="chara/akane/sad.png"]


;sitsucho
[chara_new  name="sitsucho"  storage="chara/sitsucho/sitsucho.png" jname="ケイショ-" ]


[wait time="1000"]

#
やあ、こんにちは。[r][l]
早速ですが、あなたは今日から[r][l]
スミダ区にあるプラグラミング教室に通うことになりました。[r][l]
[r][l]
[r][l]

残念ながら、PCがすべて壊れてしまいましたので、レビューが出来ません。[r][l]
先輩の定数(さだかず)くんと、室長の慶尚(けいしょう)さんと一緒に[r][l]
我ながら先が思いやられる。[r][l]
慶尚[r][l]


[s]
