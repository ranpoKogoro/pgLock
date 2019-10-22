
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
#京子
「はぁ…また似たようなところ…」[p]
「こうやってひたすら問題を解いていかなくちゃいけないのかしら？」[p]
「ねぇ、サダカズ先輩…」[p]
……[p]
……あれ、先輩がいない!?[p]
「先輩!?」[p]
#
[playse storage=doorclose.ogg volume=50 loop=false ]
[chara_show  name="sadakazu" left="550" top="120" ]
#定数
「どうしたの？　京子くん」[p]
#京子
「もう、突然いなくならないでくださいよ…」[p]
#定数
「不味いことになったよ」[p]
「僕たちは閉じ込められてしまったらしい、[l][r]
来た道を戻ろうとしたら鍵がかかっているんだ…」[p]
#京子
「なんですって…!?」[p]
#
[chara_mod  time="20" name="sadakazu" face="oteage"  ]
#定数
「ああ、ちょっとコンビニにコーラを買いに戻ろうとしたら、[l][r]
扉がガッチリで、あれじゃネズミ一匹通れやしない!!」[p]
#京子
「サダカズ先輩…  [l][r]
人に問題解かせてコーラを買いに行くって最低ですね…」[p]
[chara_mod  time="20" name="sadakazu" face="aseri"  ]
#定数
「京子君、そこは今ツッコむところかい!?」[p]
#
[chara_hide name="sadakazu" time="100"]
@layopt layer=message0 visible=false
[cm]
[button graphic="card2.png" x="350" y="500" target=*next]
[s]
*next
[cm]
[playse storage=se_maoudamashii_se_paper01.ogg volume=50 loop=false ]
[button graphic="q3.png" x="250" target=*next2]
[s]
*next2
[cm]
@layopt layer=message0 visible=true

*roop3
[cm]
@layopt layer=message0 visible=true
#
先輩は腹正しいけど、先へ進むしかないみたいね[p]
[font  color="yellow" edge="black"][link target=*check]問題を再確認[endlink][resetfont][r]
[font  color="yellow" edge="black"][link target=*anser]分かった！[endlink][resetfont][r]
[font  color="yellow" edge="black"][link target=*hint]ヒントほしい[endlink][resetfont][r]
[s]
*check
[cm]
@layopt layer=message0 visible=false
[playse storage=se_maoudamashii_se_paper01.ogg volume=50 loop=false ]
[button graphic="q3.png" x="250" target=*roop3]
[s]
*hint
[cm]
#
[chara_show  name="sadakazu" left="550" top="120" ]
#定数
「京子君、[l][r]
Bothってどういう意味だい？」[p]

#京子
「両方という意味だと思います」[p]
[chara_mod  time="20" name="sadakazu" face="oteage"]
#定数
「ふんふん、[l][r]
道は3本。[l][r]
選択使が足りないというわけだね」[p]
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
[button graphic="lKeyo.png" enterimg="lKey.png" x="230" y="450" enterse="cursor2.ogg" clickse="decision7.ogg" target=*gogogo1]
[button graphic="uKeyo.png" enterimg="uKey.png" x="420" y="330" enterse="cursor2.ogg" clickse="decision7.ogg" target=*gogogo2]
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

*gogogo1
[cm]

[chara_hide_all]
[stopbgm]
@layopt layer=message0 visible=false
@jump storage="scene5.ks"
