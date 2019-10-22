
[cm  ]
[clearfix]
[start_keyconfig]

;ここから2行場面転換用
[bg storage="waitPG_B.jpg" method="crossfade" time="1000"]
[wait time="1000"]
;場面PC教室
[bg storage="haroIn.png" method="slide" time="1000"]
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

@playbgm time="3000" storage=haro.ogg volume=30 loop=true
@layopt layer=message0 visible=true
[chara_show  name="sadakazu" left="550" top="120" ]
#定数
「京子くん、[l][r]
神田メンターは僕に気があると[r]
思わないかい??」[p]
#京子
どうでもいい…[p]
「さぁ…[l][r]
どうしてそう思うんです??」[p]
#
[chara_mod  time="20" name="sadakazu" face="oteage"  ]
#定数
「こないだメールをもらったんだよ」[p]
「『台風なので、今日の授業は休講になります』[l]
ってね!!」[p]
[font size="30" color="pink" edge="black"]「気遣われてるなぁ!!」[resetfont][p]
#京子
「業務連絡じゃないですか…」[p]
#定数
「こないだなんて、チャットももらったんだよ」[p]
「『財布を忘れてます、シツチョーに渡しておきます』[l]
ってね!!」[p]
[font size="30" color="pink" edge="black"]「優しいなぁ!!」[resetfont][p]
#京子
……[p]
#
[chara_hide name="sadakazu" time="100"]
@layopt layer=message0 visible=false
[cm]
[cm]
[button graphic="card2.png" x="350" y="500" target=*next]
[s]
*next
[cm]
[playse storage=se_maoudamashii_se_paper01.ogg volume=50 loop=false ]
[button graphic="q2.png" x="250" target=*next2]
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
[button graphic="q2.png" x="250" target=*roop3]
[s]
*hint
[cm]
#
[chara_show  name="sadakazu" left="550" top="120" ]
#定数
「京子君、[l][r]
cssってなんだっけ？」[p]

#京子
「htmlの[font  color="gold" edge="black"]class[resetfont]や[font  color="gold" edge="black"]id[resetfont]などの[r]
[font  color="gold" edge="black"]セレクタ{}[resetfont]を指定して[p]
カラーなど、[font  color="gold" edge="black"]プロパティの値[resetfont]を[r]
指定して、Webなどをデザインする言語だったかと」[p]
[chara_mod  time="20" name="sadakazu" face="aseri"]
#定数
「・・・[l][r]
半分くらい何言っているかわからないよ・・・」[p]
#
[chara_hide name="sadakazu" time="100"]
@layopt layer=message0 visible=false
@jump target=*roop3
[s]

*anser
[cm]
@layopt layer=message0 visible=false
[playse storage=se_maoudamashii_onepoint30.ogg volume=50 loop=false ]
[wait time="1000"]
[button graphic="lKeyo.png" enterimg="lKey.png" x="230" y="450" enterse="cursor2.ogg" clickse="decision7.ogg" target=*gogogo2]
[button graphic="uKeyo.png" enterimg="uKey.png" x="420" y="330" enterse="cursor2.ogg" clickse="decision7.ogg" target=*gogogo2]
[button graphic="rKeyo.png" enterimg="rKey.png" x="620" y="450" enterse="cursor2.ogg" clickse="decision7.ogg" target=*gogogo1]
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

*gogogo1
[cm]

[chara_hide_all]
[stopbgm]
@layopt layer=message0 visible=false
@jump storage="scene4.ks"
