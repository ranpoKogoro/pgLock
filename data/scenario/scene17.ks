
[cm  ]
[clearfix]
[start_keyconfig]

;ここから4行場面転換用
[bg storage="waitPG_B.jpg" method="crossfade" time="1000"]
[wait time="1000"]
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
@layopt layer=message0 visible=true
@playbgm time="3000" storage=haro.ogg volume=30 loop=true
#謎の声
これが最後の問題です[p]
最後の最後でなんですが、[p]
間違えたらゲームオーバーです[p]
どうか頑張って解いてくださいね！[p]
#
[cm]
@layopt layer=message0 visible=false
[button graphic="card2.png" x="350" y="500" target=*next]
[s]
*next
[cm]
[playse storage=se_maoudamashii_se_paper01.ogg volume=50 loop=false ]
[button graphic="q16.png" x="250" target=*next2]
[s]
*next2
[cm]
@layopt layer=message0 visible=true

*roop3
[cm]
@layopt layer=message0 visible=true
#
最後だから、心してかかろう!![p]
[font  color="yellow" edge="black"][link target=*check]問題を再確認[endlink][resetfont][r]
[font  color="yellow" edge="black"][link target=*anser]謎が解けた！[endlink][resetfont][r]
[font  color="yellow" edge="black"][link target=*hint]ヒントほしい[endlink][resetfont][r]
[s]
*check
[cm]
@layopt layer=message0 visible=false
[playse storage=se_maoudamashii_se_paper01.ogg volume=50 loop=false ]
[button graphic="q16.png" x="250" target=*roop3]
[s]
*hint
[cm]

#京子
「[font  color="yellow" edge="black"]クラス[resetfont]から[font  color="yellow" edge="black"]インスタンス[resetfont]生成して[r]
[font  color="yellow" edge="black"]オブジェクト[resetfont]もある…[l][r]
文字だけ追っても時間がかかるわ…[l][r]
どうしよう…」[p]
#
[chara_show  name="sadakazu" left="550" top="120" ]
[chara_mod  time="20" name="sadakazu" face="lauth"]
#定数
「ふっ…なるほどね」[p]
#京子
「先輩！！[l][r]
まさかもう読み解いたんですか!?[l][r]
このコードを!?」[p]
[chara_mod  time="20" name="sadakazu" face="oteage"]
#定数
「いや？」[p]
#京子
「もう！！先輩！！」[p]
#定数
「『犯人はだれ』が問題だよ、京子君。[l][r]
コードを読み解いてももちろん分かる問題かもしれないが、[l][r]
出題者の性格を考慮すると、[l][r]
双方向から同じ解答にいきつけると思うね」[p]
#京子
「犯人??…出題者??…ちょっと意味が」[p]
[chara_mod  time="20" name="sadakazu" face="normal"]
#定数
「これはね、一見クイズゲームのようでいて、論理パズルなんだ」[p]
#京子
「??…」[p]
#定数
「分からないかい？よろしい[l][r]
ならばヒントを出そう[l][r]
水没したスマホ、張り紙、靴跡…」[p]
「謎を解き明かす手掛かりは出揃っている。[l][r]
答えは論理的に導き出せるんだ。[l][r]
京子君、[l][r]今日一日を振り返ってみてみるんだ…」[p]
#京子
「今日一日…」[p]
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
[button graphic="lKeyo.png" enterimg="lKey.png" x="230" y="450" enterse="cursor2.ogg" clickse="decision7.ogg" target="gogogo3"]
[button graphic="uKeyo.png" enterimg="uKey.png" x="420" y="330" enterse="cursor2.ogg" clickse="decision7.ogg" target="gogogo3"]
[button graphic="rKeyo.png" enterimg="rKey.png" x="620" y="450" enterse="cursor2.ogg" clickse="decision7.ogg" target=*gogogo1]
[s]


*gogogo3
[cm]
@layopt layer=message0 visible=true
#
間違えたらゲームオーバーだよ？[p]
本当にこの道で良いかい？[p]
[font  color="yellow" edge="black"][link target=*check]もうちょっと考える[endlink][resetfont][r]
[font  color="yellow" edge="black"][link target=*gameover]真実はつかんだ[endlink][resetfont][r]
[s]

[cm]
*gogogo1
[cm]
@layopt layer=message0 visible=true
#
間違えたらゲームオーバーだよ？[p]
本当にこの道で良いかい？[p]
[font  color="yellow" edge="black"][link target=*check]もうちょっと考える[endlink][resetfont][r]
[font  color="yellow" edge="black"][link target=*gameclear]真実はつかんだ[endlink][resetfont][r]
[s]
*gameover
[cm]

[chara_hide_all]
[stopbgm]
@layopt layer=message0 visible=false
@jump storage="gameover.ks"

*gameclear
[cm]

[chara_hide_all]
[stopbgm]
@layopt layer=message0 visible=false
@jump storage="last.ks"
