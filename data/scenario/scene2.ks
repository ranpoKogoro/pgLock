
[cm  ]
[clearfix]
[start_keyconfig]

;ここから2行場面転換用
[bg storage="waitPG.jpg" method="crossfade" time="1000"]
[wait time="1000"]
;場面PC教室
[bg storage="haroOut.png" method="slide" time="1000"]
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

;sitsucho
[chara_new  name="sitsucho"  storage="chara/sitsucho/situtyo_nomal_B.png" height="600" jname="シツチョー" ]
[chara_face name="sitsucho" face="normal" storage="chara/sitsucho/situtyo_nomal_B.png"]
[chara_face name="sitsucho" face="lookup" storage="chara/sitsucho/situtyo_lookup_B.png"]
[chara_face name="sitsucho" face="thinking" storage="chara/sitsucho/situtyo_thinking_B.png"]
[chara_face name="sitsucho" face="thinking2" storage="chara/sitsucho/situtyo_thinking2_B.png"]

@layopt layer=message0 visible=true
@playbgm time="3000" storage=tayorinai.ogg volume=25 loop=true

[cm]
#京子
かくして、私達一同は[r]
波呂悪奴コーポレーションへと向かった！[p]

正直、弁護士に相談したほうが[r]
良いんじゃないかしら、[r][l]
などと密かに考えていたのだけれど…[p]

『ウリウリくん』の開発会社に興味があったし、[r]
なんだか面白い展開になりそうだったのと、」[p]
「あの手紙に書かれていた、[font  color="pink" edge="black"]優秀な受講生[resetfont]に[r][l]
サダカズ先輩はさておき、[r][l]
私が入っていないことにモノ申したい気持ちがあったので」[p]
「雰囲気に飲まれたふりをして[l][r]
私も着いていくことにした！」[p]
#
[wait time="1000"]



[stopbgm]
@layopt layer=message0 visible=false
;ここから2行場面転換用
[bg storage="waitPG_B.jpg" method="crossfade" time="1000"]
[wait time="1000"]
;場面PC教室
[bg storage="entrans.png" method="slide" time="1000"]
[wait time="1000"]

@playbgm time="3000" storage=haro.ogg volume=30 loop=true
@layopt layer=message0 visible=true

#京子
「ここが波呂悪奴コーポレーション…[r]
人がいないわ…」[p]
「静かすぎて、まるで廃ビルみたい…」[p]
#
[chara_show  name="sadakazu" left="550" top="120" ]

#定数
「趣味の悪いビルだね…[r]
神田さんはどこにいるんだろう」[p]
#

[chara_show  name="sitsucho" left="100" top="120" reflect="true"]
[chara_mod  name="sitsucho" face="thinking"  ]
#シツチョー
「はぁはぁ…うぐっ、やられた…」[p]
#京子
「…!? シツチョー!?[l][r]
どうしたんですか!?」[p]
#シツチョー
「歩き疲れて腰も痛い…[l][r]
[font  color="pink"]腰痛持ち[resetfont]なんだ私は…」[p]
#定数
「ちょっとシツチョー、[r]
紛らわしいですよ!!」[p]
#シツチョー
「とりあえず、ちょっと周囲を調べてみる必要があるのう…」[p]
#京子
「じゃあ私がちょっと探索します[l][r]
シツチョーは休んでいてください」[p]
#
周囲を調べよう!!
#

[chara_hide_all]
@layopt layer=message0 visible=false

[playse storage=se_maoudamashii_onepoint30.ogg volume=20 loop=false ]
*gogo
[cm]
@layopt layer=message0 visible=false
[locate x=20 y=0]
[button graphic="lightanime.gif" clickse="se_maoudamashii_system48.ogg" height="40" x="220" y="150" target=*item1]
[button graphic="lightanime.gif" clickse="se_maoudamashii_system48.ogg" height="40" x="610" y="150" target=*item2]
[button graphic="lightanime.gif" clickse="se_maoudamashii_system48.ogg" height="40" x="850" y="150" target=*item3]
[button graphic="card1.png" clickse="se_maoudamashii_system48.ogg" x="410" y="350" target=*move]
[s]

*item1
;cmでグラフィカルボタン消さないとクリック出来ない模様
[cm]
@layopt layer=message0 visible=true
#
エレベーターだ…[r]
故障中と書いてある…[p]
@layopt layer=message0 visible=false
@jump target=*gogo
[cm]
[s]

*item2
[cm]
@layopt layer=message0 visible=true
#
『ウリウリくん』のポスターだ…[r]
なんだかやる気のないデザインだ…[p]
@layopt layer=message0 visible=false
@jump target=*gogo
[cm]
[s]

*item3
[cm]
@layopt layer=message0 visible=true
#
階段だ…[r]
薄暗い…[p]
@layopt layer=message0 visible=false
@jump target=*gogo
[cm]
[s]

*move
[cm]
@layopt layer=message0 visible=true
#京子
！！[p]
シツチョー！[r]
サダカズ先輩！[p]
これを見てください！[p]

*1more
@layopt layer=message0 visible=false
[cm]
[playse storage=se_maoudamashii_se_paper01.ogg volume=50 loop=false ]
[locate x=20 y=0]
[button graphic="memo1.png" x="250" target=*next]
[s]
*next
[cm]
@layopt layer=message0 visible=true
#
もう一回見る?[p]
[font  color="yellow" edge="black"][link target=*1more]見る[endlink][resetfont][r]
[font  color="yellow" edge="black"][link target=*no2]もう十分[endlink][resetfont][r]
[font  color="yellow" edge="black"][link target=**gogo]エントランスを調べ直す[endlink][resetfont][r]
[s]
*no2
[cm]
[chara_show  name="sitsucho" left="100" top="120" reflect="true"]
[chara_show  name="sadakazu" left="550" top="120" ]
[chara_mod  time="20" name="sitsucho" face="thinking"  ]
#シツチョー
「むむむ!![r]
波呂の奴めー!」[p]
「どこまで人を馬鹿にすれば、[l][r]
気が済むんじゃ！！[l][r]
わしはもう許さんぞ！」[p]
#
[chara_hide name="sitsucho" ]
[playse storage=kutsuoto.ogg volume=50 loop=true ]
[wait time=2000]
[stopse]

#
シツチョーは階段をかけあがっていった！[p]

#京子
…シツチョー、あんなに走って大丈夫かしら？[p]
「サダカズ先輩、[l][r]
問題とは一体なんでしょうか？」[p]
#
[chara_mod  time="20" name="sadakazu" face="oteage"  ]
#定数
「さぁね、とりあえずシツチョーをおいかけようよ！」[p]
#
[chara_hide name="sadakazu" ]
@layopt layer=message0 visible=false
[button graphic="lightanime.gif" clickse="se_maoudamashii_system48.ogg" height="40" x="850" y="150" target=*2F]
[s]
*2F
[cm]
[playse storage=kutsuoto.ogg volume=50 loop=true ]
[wait time=2000]
[stopse]
[bg storage="waitPG_B.jpg" method="crossfade" time="1000"]
[wait time="1000"]
;場面PC教室
[bg storage="haroIn_B.jpg" method="slide" time="1000"]
[wait time="1000"]

@layopt layer=message0 visible=true
#京子
「シツチョー、いないわ。[p]
先に行ってしまったのかしら…」[p]

@layopt layer=message0 visible=false
[cm]
[button graphic="card2.png" x="350" y="500" target=*next2]
[s]
*next2
[cm]
[playse storage=se_maoudamashii_se_paper01.ogg volume=50 loop=false ]
[button graphic="q1.png" x="250" target=*next3]
[s]
*next3
[cm]
@layopt layer=message0 visible=true
#

#京子
「またカードだわ」[p]
#

[chara_show  name="sadakazu" left="550" top="120" ]
#定数
「どうやらこれが問題のようだね、[r]
京子くん」[p]

#京子
「問題、ですか？」[p]

#定数
「そうだよ、京子くん[r]
下の矢印は進む方向を示しているんじゃないかな」[p]

#京子
「なるほど」[p]

#定数
「そうと分かれば[l][r]
あとは問題を解くだけだ[l][r]
京子くん、頼んだよ！」[p]

#京子
「エッ、私が解くんですか？」[p]

[chara_mod  time="20" name="sadakazu" face="lauth"  ]
#定数
「僕が解けるなら、[r]
とっくに解いているよ！」[p]
[chara_mod  time="20" name="sadakazu" face="oteage"  ]
[font  size="30"   ]
「まったく観察力が足りないねっ！」[p]
[resetfont]

#京子
うーむ、この人は、、、[p]
#
[chara_hide name="sadakazu" time="0"]
#
*roop3
[cm]
@layopt layer=message0 visible=true
どうする?[p]
[font  color="yellow" edge="black"][link target=*check]問題を見る[endlink][resetfont][r]
[font  color="yellow" edge="black"][link target=*anser]答えが分かったので進む[endlink][resetfont][r]
[font  color="yellow" edge="black"][link target=*hint]ヒントほしい[endlink][resetfont][r]
[s]
*check
[cm]
@layopt layer=message0 visible=false
[playse storage=se_maoudamashii_se_paper01.ogg volume=50 loop=false ]
[button graphic="q1.png" x="250" target=*roop3]
[s]
*hint
[cm]
[chara_show  name="sadakazu" left="550" top="120" ]
#定数
「知ってるかい？京子君、[l][r]
Javascriptは開発当初はLiveScriptという名前だったんだけど、[l][r]
当時のJava人気にあやかって、Javascriptに[r]
改名されたともいわれているんだ」[p]
#京子
「へぇ、そうなんですか。だから違う言語なのに、[r]
似た名前が付いているんですね！」[p]
#
[chara_hide name="sadakazu" time="100"]
@layopt layer=message0 visible=false
@jump target=*roop3
[s]

*anser
[cm]
@layopt layer=message0 visible=false
[button graphic="lKeyo.png" enterimg="lKey.png" x="250" y="400" enterse="cursor2.ogg" clickse="decision7.ogg" target=*gogogo1]
[button graphic="rKeyo.png" enterimg="rKey.png" x="590" y="400" enterse="cursor2.ogg" clickse="decision7.ogg" target=*gogogo2]
[button graphic="lightanime.gif" clickse="se_maoudamashii_system48.ogg" height="40" x="450" y="150" target=*check2]
[s]

*check2
[cm]
@layopt layer=message0 visible=true
#
珍妙な生き物が描かれている…[p]
絶妙に気持ちが悪い…[p]
@layopt layer=message0 visible=false
@jump target=*anser
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
[chara_hide name="sadakazu" time="100"]
@layopt layer=message0 visible=false
@jump target=*roop3
[s]

*gogogo1
[cm]

[chara_hide_all]
[stopbgm]
@layopt layer=message0 visible=false
@jump storage="scene3.ks"
