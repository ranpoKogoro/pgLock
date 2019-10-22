[cm  ]
[clearfix]
[start_keyconfig]

[bg storage="lookBack.jpg" method="clip" time="1000"]
[wait time="1000"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=20 top=400 width=920 height=250 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=24 x=80 y=420]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;sadakazu
[chara_new  name="sadakazu" storage="chara/sadakazu/sadakazu_normal_B.png" height="650" jname="定数"  ]
;キャラクターの表情登録
[chara_face name="sadakazu" face="normal" storage="chara/sadakazu/sadakazu_normal_B.png"]
[chara_face name="sadakazu" face="aseri" storage="chara/sadakazu/sadakazu_aseri_B.png"]
[chara_face name="sadakazu" face="lauth" storage="chara/sadakazu/sadakazu_lauth_B.png"]
[chara_face name="sadakazu" face="oteage" storage="chara/sadakazu/sadakazu_oteage_B.png"]

*return1
[cm]
@layopt layer=message0 visible=false
[button graphic="lightanime.gif" clickse="se_maoudamashii_system48.ogg" height="40" x="360" y="550" target=*footPrint2]
[button graphic="lightanime.gif" clickse="se_maoudamashii_system48.ogg" height="40" x="590" y="550" target=*footPrint1]

[s]

*footPrint1
;cmでグラフィカルボタン消さないとクリック出来ない模様
[cm]
@layopt layer=message0 visible=true
#京子
私の足跡だ…[r]
帰ったら靴を洗わないと[p]
#
@layopt layer=message0 visible=false
@jump target=*return2
[cm]
[s]

*footPrint2
;cmでグラフィカルボタン消さないとクリック出来ない模様
[cm]
@layopt layer=message0 visible=true
#京子
先輩の足跡だ…[r]
こんなものを見ても時間の無駄だ[p]
#
@layopt layer=message0 visible=false
@jump target=*return2
[cm]
[s]

*return2
[cm]
@layopt layer=message0 visible=false
[button graphic="lightanime.gif" clickse="se_maoudamashii_system48.ogg" height="40" x="360" y="550" target=*footPrint2]
[button graphic="lightanime.gif" clickse="se_maoudamashii_system48.ogg" height="40" x="590" y="550" target=*footPrint1]
[button graphic="dKeyo.png" enterimg="dKey.png" height="80" x="750" y="550" enterse="cursor2.ogg" clickse="decision7.ogg" target=*gogogo]
[s]
*gogogo
[cm]
[chara_hide_all]
[stopbgm]
@layopt layer=message0 visible=false
[bg storage="haroIn.png" method="clip" time="1000"]
[wait time="1000"]
[jump storage=scene13.ks target=*roop3]
