;ティラノスクリプトサンプルゲーム

*start

[cm  ]
[clearfix]
[start_keyconfig]

;ここから2行場面転換用
[bg storage="waitPG.jpg" method="crossfade" time="1000"]
[wait time="1000"]
;場面PC教室
[bg storage="roomOut.png" method="slide" time="1000"]
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
[chara_new  name="sadakazu" storage="chara/sadakazu/sadakazu_normal.png" height="650" jname="定数"  ]
;キャラクターの表情登録
[chara_face name="sadakazu" face="normal" storage="chara/sadakazu/sadakazu_normal.png"]
[chara_face name="sadakazu" face="aseri" storage="chara/sadakazu/sadakazu_aseri.png"]
[chara_face name="sadakazu" face="lauth" storage="chara/sadakazu/sadakazu_lauth.png"]
[chara_face name="sadakazu" face="oteage" storage="chara/sadakazu/sadakazu_oteage.png"]

;sitsucho
[chara_new  name="sitsucho"  storage="chara/sitsucho/situtyo_nomal.png" height="600" jname="シツチョー" ]
[chara_face name="sitsucho" face="normal" storage="chara/sitsucho/situtyo_nomal.png"]
[chara_face name="sitsucho" face="lookup" storage="chara/sitsucho/situtyo_lookup.png"]
[chara_face name="sitsucho" face="thinking" storage="chara/sitsucho/situtyo_thinking.png"]
[chara_face name="sitsucho" face="thinking2" storage="chara/sitsucho/situtyo_thinking2.png"]

@playbgm time="3000" storage=tayorinai.ogg volume=25 loop=true


[cm]
#
ここはスミガワ区にある、こじんまりとしたPC教室。[p][cm]
私、[font  color="pink" edge="black"]
東京子(ひがしきょうこ)
[resetfont]は、通い始めて早二週間となる。[p][cm]

#京子
「今日も頑張って色々覚えなきゃ！」[p][cm]
#
@layopt layer=message0 visible=false
[bg storage="waitPG.jpg" method="crossfade" time="1000"]
[wait time="1000"]
[bg storage="roomPC.jpg" method="slide" time="1000"]
@layopt layer=message0 visible=true
#京子
「おはようございまーす」[p][cm]
・・・[p][cm]
#京子
誰もいない…おかしいな…[p][cm]
受講時間前とはいえ、時間はギリギリ[p][cm]
いつもは大勢いる受講生と講師陣が軒並みいない…[p][cm]
[playse storage=se_maoudamashii_se_door05.ogg volume=50 loop=false ]
[font  size="30"]
#?
「ヤァ、京子くん、おはよう!」[p][cm]
[resetfont  ]
#
[chara_show  name="sadakazu" left="550" top="120" ]

#京子
「あっ、サダカズ先輩!!」[p][cm]
彼はこの教室の先輩で、名を[font  color="pink" edge="black"]定数(サダカズ)[resetfont]という。[p][cm]
飲み込みが悪く、しょっちゅう[font  color="pink" edge="black"]本田シツチョー[resetfont]には叱られているが、[p]
シツチョーとのやり取りは見てると面白いので、私は嫌いではない。[p][cm]

#定数
「どうしたんだい、ニヤニヤして」[p][cm]
#京子
「いえ、[l]
おはようございます先輩」[p][cm]
「勉強は順調ですか？」[p][cm]
[chara_mod  time="20" name="sadakazu" face="oteage"  ]
#定数
「うーん、あんましだね」[p][cm]
#京子
「どこかでつまづいてるんですか？」[p][cm]
#定数
「変数と代入」[p][cm]
#京子
(一番最初だ…)[p][cm]
「値をハコに入れるイメージの部分ですか？」[p][cm]
#定数
「そうだよ、[font  color="gold" edge="black"]let[resetfont]だの
[font  color="gold" edge="black"]var[resetfont]だの色々あるけど…」[p][cm]
[chara_mod  time="20" name="sadakazu" face="aseri"  ]
「いきなり出てきたこの得体のしれないハコは[r]
一体どこから来たんだろうかと不安になるし」[p][cm]
「=(イコール)なのに右から左へ移動するのも気持ち悪い」[p][cm]
[chara_mod  time="20" name="sadakazu" face="oteage"  ]
「考えたら夢の中だよ」[p][cm]
#京子
「寝てるんじゃないですか…」[p][cm]
[chara_mod  time="20" name="sadakazu" face="normal"  ]
#定数
「そんなことより…」[p][cm]
「今日は[ruby text=うるわ]麗しき[font  color="gold" edge="black"]神田メンター[resetfont]が見当たらないね」[p][cm]
#京子
[font  color="pink" edge="black"]神田メンター[resetfont]とは、
当教室きっての美人メンターで、[p]
男性陣に非常に人気がある。[p][cm]
なかなか腹ただし…[p][cm]
羨ましいことである。[p][cm]
#定数
「今日休みなのかな、」[p][cm]
「だとしたら」[p][cm]
[chara_mod  time="20" name="sadakazu" face="oteage"  ]
「僕も帰りたいな」[p][cm]
#京子
「サダカズ先輩、よく見てください」[p][cm]
[chara_mod  time="20" name="sadakazu" face="normal"  ]
「いないのは、神田さんだけではなく、[l][r]
[font  color="pink" edge="black"]私達以外の全員[resetfont]ですよ」[p][cm]
#定数
「言われてみればホントだね、[l][r]
京子君、他のメンターや受講生から何か聞いているかい？」[p]
#京子
「それが…[l][r]
ここに来て日が浅く、知り合いがいないのと、[l][r]
先日[font  color="pink" edge="black"]スマホを水没[resetfont]させてしまって…」[p]
「知ってるメンターへも質問できない状態でして…」[p]
「サダカズ先輩はどうですか？」[p]
[chara_mod  time="20" name="sadakazu" face="oteage"  ]
#定数
「人間と不要な繋がりは避けたいから、[l][r]
[font  color="pink" edge="black"]ケータイは持たない[resetfont]と心に決めている。」[p]
#京子
「はぁ…なるほど」[l][r]
やっぱり変な人だなぁ…この人[p]
「[font  color="pink" edge="black"]シツチョー[resetfont]もいないみたいですね」[p][cm]
#定数
「[font  color="pink" edge="black"]シツチョー[resetfont]はいなくていいよ、別に」[p][cm]
[playse storage=se_maoudamashii_se_door05.ogg volume=100 loop=false ]
#?
「いつも丁寧に教えてやってるというのに[l][r]
[font  color="pink" edge="black"]いなくていい[resetfont]とは何事かね、サダカズ君」[p][cm]
#
[chara_show  name="sitsucho" left="100" top="120" reflect="true"]
#京子
「シツチョー!」[p][cm]
#シツチョー
「まったく、そんなんだから君は覚えが遅いのだよ」[p][cm]
#京子
この人は[font  color="pink" edge="black"]本田[ruby text=けい]慶[ruby text=しょう]尚(ほんだけいしょう)[resetfont]さん[p]
KEISYO-PG教室という名前からもわかる通り、ここの室長だ[p][cm]
[cm]
[chara_mod  name="sitsucho" face="lookup"  ]
#シツチョー
「おや、京子くんじゃないか、今日は…」[p]
#京子
「??…[l][r]
なんでしょう??」[p]
#
[wait time="1000"]
[chara_mod  name="sitsucho" face="normal"  ]
#シツチョー
「しっかり家で復習してきたかね？」[p][cm]
#京子
うっ、不意打ちだ…[p]
「えーと…」[p]
[font  color="yellow" edge="black"][link target=*yes1]書籍でバッチリと[endlink][resetfont][r]
[font  color="yellow" edge="black"][link target=*no1]いえ、あまり・・・[endlink][resetfont][r]
[font  color="yellow" edge="black"][link target=*hearcut]髪切りました？[endlink][resetfont][r]
[s]
*yes1
[cm]
[chara_mod  name="sitsucho" face="lookup"  ]
#シツチョー
「素晴らしい、どこかの怠け者とは大違いだ」[p][cm]
[chara_mod  time="20" name="sadakazu" face="oteage"  ]
#定数
「シツチョーも見習わなきゃですね」[p][cm]
#シツチョー
「君だよ、一番見習うべきは」[p][cm]
@jump target=*common

*no1
[cm]
[chara_mod  name="sitsucho" face="lookup"]
#シツチョー
「そうかね、まぁ京子君は優秀だから、[r]
時にはリフレッシュも大切というところかね」[p][cm]
[chara_mod  time="20" name="sadakazu" face="oteage"  ]
#定数
「京子くん、一回怠けてしまうと[r]
それが習慣となってしまうよ」[p][cm]
[chara_mod  time="20" name="sadakazu" face="lauth"  ]
#定数
「自分に甘えちゃダメだ[r]
肝に命じて置くようにね」[p][cm]
[chara_mod time="0" name="sitsucho" face="thinking2"  ]
#シツチョー
「君に一番言いたいよ、サダカズ君」[p][cm]
@jump target=*common

*hearcut
[cm]
[chara_mod  name="sitsucho" face="lookup"  ]
#シツチョー
「ほぉ、気づいたかね、実は先日散髪したのだよ[p]
いやぁ、さすがの洞察力だね、京子さん」[p][cm]
[chara_mod  time="20" name="sadakazu" face="oteage"  ]
#定数
「シツチョーのは気づきませんでしたけど、髪型といえば[p]
神田さん、最近ショートにしましたね」[p][cm]
@jump target=*common


*common
[cm]
[chara_mod  time="20" name="sadakazu" face="normal"  ]
[chara_mod  name="sitsucho" face="normal"  ]
#シツチョー
「って・・・」[p]
[stopbgm]
[chara_mod  time="0" name="sitsucho" face="lookup"  ]
[playse storage=se_maoudamashii_explosion05.ogg volume=50 loop=false ]
[font  size="30"   ]
「そんなこと言ってる場合じゃない!!」[p][cm]
[resetfont]
「大変なんだよ!!」[p][cm]

#京子
「どうかしたんですか？シツチョー」[p]
[chara_mod  name="sitsucho" face="normal"  ]
#シツチョー
「どうもこうも![p]
とりあえずこれを見るのだ!!」[p][cm]
#
@playbgm time="3000" storage=Thiefs_time.ogg volume=25 loop=true

*1more
@layopt layer=message0 visible=false
[cm]
[playse storage=se_maoudamashii_se_paper01.ogg volume=50 loop=false ]
[locate x=20 y=0]
[button graphic="tegami.png" x="250" target=*next]
[s]
*next
[cm]
@layopt layer=message0 visible=true
#
もう一回見る?[p]
[font  color="yellow" edge="black"][link target=*1more]見る[endlink][resetfont][r]
[font  color="yellow" edge="black"][link target=*no2]もう十分[endlink][resetfont][r]
[s]
*no2
[cm]
#京子
「これは一体・・・!!」[p][cm]
[chara_mod  time="20" name="sitsucho" face="thinking2"  ]
#シツチョー
「見ての通り、わしがあずかり知らぬうちに[r]
社員と生徒を引き抜かれたんじゃ!!」[p][cm]
[chara_mod  time="20" name="sadakazu" face="aseri"  ]
#定数
「なんだって!?[r]
じゃあ神田メンターも!!」[p][cm]
#シツチョー
「あぁ、ここに残っている者以外、[r]
全員が[font  color="yellow" edge="black"]波呂悪蔵(はろわるぞう)[resetfont]の奴に[r]
連れて行かれてしまったんだ」[p][cm]
#京子
「シツチョー、波呂悪蔵とは[r]
一体何者なんですか??」[p][cm]
#シツチョー
「わしの大学時代の悪友よ」[p][cm]
「独創的なwebサービス[r]
[font  color="yellow" edge="black"]『ウリウリくん』[resetfont]で、[r]
爆発的に売り上げを伸ばし、[p][cm]
立ち上げから2年という速さで一部上場を果たした[r][l]
[font  color="yellow" edge="black"]波呂悪奴(はろわるど)コーポレーション[resetfont]の[r]
社長でもある。」[p][cm]
「そういえば最近、[p]
[font  color="pink"]最近プログラミングスクールを始めたがっていた[resetfont][r]
と聞く」[p][cm]

#京子
「あの『ウリウリくん』の!?[r][l]
私、よく使います!!」[p][cm]
「あぁ、そんなことはどうでもいいですね…」[p][cm]
[chara_mod  time="20" name="sitsucho" face="thinking"  ]
#シツチョー
「とにかく今から、波呂の所へ向かわねばならんのだ[r][l]
悪いが、今日は授業どころではない[r][l]
勝手で悪いが、休校とさせていただく」[p][cm]
[chara_mod  time="20" name="sadakazu" face="normal"  ]
#定数
「待ってくださいシツチョー!![r]
僕も行きます!!」[p][cm]
#京子
「エッ…!!　何故サダカズ先輩が!?」[p][cm]
#定数
「決まってるじゃないか!![r]
大企業だか何だか知りゃしないが、[r]
こんな横暴は許されない!!」[p][cm]
「僕がガツンと言ってやる!!」[p][cm]
「内弁慶のシツチョーだけじゃ、[r]
頼りなくて任せておけないよ!!」[p][cm]
[chara_mod  time="20" name="sitsucho" face="lookup"  ]
#シツチョー
「サダカズ君…！！[p]
これほど、君を心強く感じた日が[r]
かつてあっただろうか」[p]
「よーし、そうと決まればいざ出陣だ!![r][l]
待っておれ波呂！」[p]
#
[chara_hide_all]
[stopbgm]
@layopt layer=message0 visible=false
@jump storage="scene2.ks"
