
[cm  ]
[clearfix]
[start_keyconfig]

;ここから4行場面転換用
[bg storage="waitPG_B.jpg" method="crossfade" time="1000"]
[wait time="1000"]
[bg storage="Staircase.jpg" method="slide" time="1000"]
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

@layopt layer=message0 visible=true
#京子
「ふー…[l][r]
ちょっと疲れましたね、先輩」[p]
#定数
「うーむ…」[p]
#京子
「どうしたんですか？」[p]
#定数
「いや、[l][r]
京子君が疲れるほどだ。[l][r]
腰痛持ちのシツチョーは[r]
大変だな、と思ってね」[p]
#京子
「うっ…頑張りますよ、私だってまだ若いし」[p]
#
[font  color="yellow" edge="black"][link target=*stepup]進む[endlink][resetfont]
[s]

*stepup
[cm]
@layopt layer=message0 visible=false
[playse storage=kutsuoto.ogg volume=50 loop=true ]
[wait time=2000]
[stopse]
@playbgm time="3000" storage=haro.ogg volume=30 loop=true
[bg storage="waitPG_B.jpg" method="crossfade" time="1000"]
[wait time="1000"]
[bg storage="haroIn.png" method="slide" time="1000"]
[cm]
[button graphic="card2.png" x="350" y="500" target=*next]
[s]
*next
[cm]
[playse storage=se_maoudamashii_se_paper01.ogg volume=50 loop=false ]
[button graphic="q7.png" x="250" target=*next2]
[s]
*next2
[cm]
@layopt layer=message0 visible=true

*roop3
[cm]
@layopt layer=message0 visible=true
#
うーん[p]
[font  color="yellow" edge="black"][link target=*check]問題を再確認[endlink][resetfont][r]
[font  color="yellow" edge="black"][link target=*anser]分かった！[endlink][resetfont][r]
[font  color="yellow" edge="black"][link target=*hint]ヒントほしい[endlink][resetfont][r]
[s]
*check
[cm]
@layopt layer=message0 visible=false
[playse storage=se_maoudamashii_se_paper01.ogg volume=50 loop=false ]
[button graphic="q7.png" x="250" target=*roop3]
[s]
*hint
[cm]
#
#京子
「numAというのが[font  color="pink" edge="black"]変数名[resetfont]ね、[l][r]
=で8を変数に代入しているんだわ」[p]
「[font  color="pink" edge="black"]console.log(変数名);[resetfont]で、[l][r]
代入した値が出力されるから答えは…」[p]
#

@layopt layer=message0 visible=false
@jump target=*roop3
[s]

*anser
[cm]
@layopt layer=message0 visible=false
[playse storage=se_maoudamashii_onepoint30.ogg volume=50 loop=false ]
[wait time="1000"]
[button graphic="lKeyo.png" enterimg="lKey.png" x="230" y="450" enterse="cursor2.ogg" clickse="decision7.ogg" target=*gogogo3]
[button graphic="uKeyo.png" enterimg="uKey.png" x="420" y="330" enterse="cursor2.ogg" clickse="decision7.ogg" target=*gogogo1]
[button graphic="rKeyo.png" enterimg="rKey.png" x="620" y="450" enterse="cursor2.ogg" clickse="decision7.ogg" target=*gogogo2]
[s]

*gogogo2
[cm]
@layopt layer=message0 visible=true
[chara_show  name="sadakazu" left="550" top="120" ]
[playse storage=doorclose.ogg volume=50 loop=false ]
#定数
「あれ、[l][r]
開かないなー」[p]
[playse storage=se_maoudamashii_onepoint33.ogg volume=50 loop=false ]
#京子
「間違えちゃったみたい・・・」[p]
#
[chara_hide name="sadakazu" time="100"]
@layopt layer=message0 visible=false
@jump target=*roop3
[s]
*gogogo3
[cm]
@layopt layer=message0 visible=true
[chara_show  name="sadakazu" left="550" top="120" ]
[playse storage=biribiri.ogg volume=50 loop=false ]
[chara_mod  time="20" name="sadakazu" face="aseri"]
#定数
「ぐあっ、[l][r]
しびれた！！」[p]
[playse storage=se_maoudamashii_onepoint33.ogg volume=50 loop=false ]
#京子
「あら、間違えちゃったかしら・・」[p]
#
[chara_hide name="sadakazu" time="100"]
@layopt layer=message0 visible=false
@jump target=*roop3
[s]

*gogogo1
[cm]

[chara_hide_all]
[stopbgm]
@layopt layer=message0 visible=false
@jump storage="scene9.ks"
